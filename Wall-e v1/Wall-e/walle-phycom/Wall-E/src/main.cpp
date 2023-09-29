#include <Arduino.h>
#include <SoundData.h>
#include <XT_DAC_Audio.h>
#include <ESP32Servo.h>
#include <Wire.h>
#include <BluetoothSerial.h>
#include "DriverMotor.hpp"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <ESP32PWM.h>

// Setting up variables
#define SERVO_D_PIN 33
#define SERVO_I_PIN 32
#define AUDIO_PIN 25

#define Dn_CH 11
#define Dp_CH 12
#define Ip_CH 13
#define In_CH 14  

// Parseo de la señal
#define MAX_SERIAL_LENGTH 5 // No podemos dejar que se sobrecargue la señal
int primerDato;
uint8_t serialLength = 0;
char serialBuffer[MAX_SERIAL_LENGTH];
uint8_t angle;


#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled!: Please run 'make menuconfig' to enable it
#endif

BluetoothSerial SerialBT;
Servo servoI;
Servo servoD;

//Sonido
XT_Wav_Class Sound(walle);
XT_DAC_Audio_Class DacAudio(AUDIO_PIN, 0);
bool accionado;

//Tareas
TaskHandle_t movimiento;
TaskHandle_t sonido;

void playSound(){
  DacAudio.FillBuffer();

  if (Sound.Playing == false){
    Serial.println("Inicia sonido");
    DacAudio.Play(&Sound);
    accionado = true;
  }
}

void evaluarSerial(){
  // Movimiento de motores
  if (primerDato == 1) { //Movimiento para adelante
    Serial.println("Adelante");
    ledcWrite(Dn_CH, 0);
    ledcWrite(Dp_CH, 200);
    ledcWrite(Ip_CH, 150);
    ledcWrite(In_CH, 0);
  }
  else if (primerDato == 2) { //Movimiento para la izquierda
    Serial.println("Izquierda");
    ledcWrite(Dn_CH, 0);
    ledcWrite(Dp_CH, 200);
    ledcWrite(Ip_CH, 0);
    ledcWrite(In_CH, 150);
  }
  else if (primerDato == 3) { //Movimiento en reversa
    Serial.println("Reversa");
    ledcWrite(Dn_CH, 200);
    ledcWrite(Dp_CH, 0);
    ledcWrite(Ip_CH, 0);
    ledcWrite(In_CH, 150);
  }
  else if (primerDato == 4) { //Movimiento para la derecha
    Serial.println("Derecha");
    ledcWrite(Dn_CH, 200);
    ledcWrite(Dp_CH, 0);
    ledcWrite(Ip_CH, 150);
    ledcWrite(In_CH, 0);
  }

  // Movimiento de servos
  else if (primerDato >= 10 && 145 >= primerDato){
    servoI.write(180-(primerDato+45)+10); // Movimiento brazo izquierdo
  }
  else if (primerDato >= 150 && 285 >= primerDato){
    angle = (primerDato+45)-150;
    servoD.write(angle); // Movimiento brazo derecho
  }

  // Sin movimiento
  else {
    Serial.println("Detener");
    ledcWrite(Dn_CH, 0);
    ledcWrite(Dp_CH, 0);
    ledcWrite(Ip_CH, 0);
    ledcWrite(In_CH, 0);
  }
}

void moveControl(void * pvParameters){ // put your main code here, to run repeatedly:
  while (true) {
    while (SerialBT.available()) {
      primerDato = SerialBT.read();
      Serial.println(primerDato);
      evaluarSerial();
    }  
    delay(10);
  }
}

void setup(){
  Serial.begin(9600);
  SerialBT.begin("HC-05");

  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(27, OUTPUT);
  pinMode(26, OUTPUT);
  ledcAttachPin(13, Dn_CH); ledcSetup(Dn_CH, 500, 8);
  ledcAttachPin(12, Dp_CH); ledcSetup(Dp_CH, 500, 8);
  ledcAttachPin(27, Ip_CH); ledcSetup(Ip_CH, 500, 8);
  ledcAttachPin(26, In_CH); ledcSetup(In_CH, 500, 8);
  
  servoI.attach(SERVO_I_PIN);
  servoD.attach(SERVO_D_PIN);

  Sound.Speed = 2;
  // xTaskCreatePinnedToCore(moveControl, "movimiento", 1000, NULL, 1, &movimiento, 0);
  // xTaskCreatePinnedToCore(playSound, "sonido", 1000, NULL, 1, &sonido, 0);
}

void loop(){
  while (SerialBT.available()) {
      primerDato = SerialBT.read();
      Serial.println(primerDato);
      evaluarSerial();
    }  
    delay(10);

    if (angle >= 100){
      if (not accionado){
        playSound();
      }
    }else{
      accionado = false;
    }
}