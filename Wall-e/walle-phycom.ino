#include <Wire.h>
#include <Servo.h>
#include "DriverMotor.hpp"

// Setting up variables

// Pines para los motores
#define DIRECCION_D_PIN 5  //IN3
#define RETRO_D_PIN 4  //IN4
#define PWM_VEL_D_PIN 3  //ENB
#define DIRECCION_I_PIN 8 //IN1
#define RETRO_I_PIN 7  //IN2
#define PWM_VEL_I_PIN 9  //ENA

// Pines para módulo HC05
#define TX_ARDUINO 0
#define RX_ARDUINO 1

// Pines para servos
#define SERVO_D_PIN 10
#define SERVO_I_PIN 11
Servo servoD;
Servo servoI;

// Motores
DriverMotor motorI(PWM_VEL_I_PIN, DIRECCION_I_PIN, RETRO_I_PIN); 
DriverMotor motorD(PWM_VEL_D_PIN, DIRECCION_D_PIN, RETRO_D_PIN);

// Parseo de la señal
#define MAX_SERIAL_LENGTH 5 // No podemos dejar que se sobrecargue la señal
char primerChar;
uint8_t serialLength = 0;
char serialBuffer[MAX_SERIAL_LENGTH];


// --------------------------------------------------------------------------


void setup() {
  // put your setup code here, to run once:
  servoI.attach(SERVO_D_PIN);
  servoD.attach(SERVO_I_PIN);
  Serial.begin(38400); // Iniciando slave bluetooth
}


// --------------------------------------------------------------------------
// Para análisis de señales Bluetooth
// --------------------------------------------------------------------------
void evaluarSerial(){

  switch(primerChar) {

    // Movimiento de motores
    if (primerChar == "w") {
      motorI.setVelocidad(255);
      motorD.setVelocidad(255);
    }
    else if (primerChar == "a") {
      motorI.setVelocidad(0);
      motorD.setVelocidad(255);
    }
    else if (primerChar == "s") {
      motorI.setVelocidad(-255);
      motorD.setVelocidad(-255);
    }
    else if (primerChar == "d") {
      motorI.setVelocidad(255);
      motorD.setVelocidad(0);
    }

    // Movimiento de servos
    else if (isdigit(primerChar)) {  // Revisamos que los datos sean númericos
      if (atoi(primerChar) <= 180 && atoi(primerChar) >=0) { // Entre 0 y 180 grados
        //servoI.write(primerChar); Todavía no establecida la diferencia entre ambos brazos desde la app
        //servoD.write(primerChar);
      }
    }

    // Sin movimiento
    else {
      motorI.setVelocidad(0);
      motorD.setVelocidad(0);
    }
    
  }
  
}
// --------------------------------------------------------------------------
//
// --------------------------------------------------------------------------


void loop() {
  // put your main code here, to run repeatedly:
  char input;

  while (Serial.available() >= 1) {
     primerChar = Serial.read();
  }

  evaluarSerial();  
}
