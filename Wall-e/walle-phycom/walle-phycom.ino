#include <Wire.h>
#include <Servo.h>
#include "DriverMotor.hpp"

// Setting up variables

// Pines para los motores
#define DIRECCION_D_PIN 9  //IN3
#define RETRO_D_PIN 10  //IN4
#define PWM_VEL_D_PIN 11  //ENB
#define DIRECCION_I_PIN 4 //IN1
#define RETRO_I_PIN 5  //IN2
#define PWM_VEL_I_PIN 3  //ENA

// Pines para módulo HC05
#define TX_ARDUINO 0
#define RX_ARDUINO 1

// Pines para servos
#define SERVO_D_PIN 8
#define SERVO_I_PIN 7
Servo servoD;
Servo servoI;

// Motores
DriverMotor motorI(PWM_VEL_I_PIN, DIRECCION_I_PIN, RETRO_I_PIN); 
DriverMotor motorD(PWM_VEL_D_PIN, DIRECCION_D_PIN, RETRO_D_PIN);

// Parseo de la señal
int primerDato;
uint8_t serialLength = 0;


// --------------------------------------------------------------------------


void setup() {
  // put your setup code here, to run once:
  servoI.attach(SERVO_I_PIN);
  servoD.attach(SERVO_D_PIN);
  Serial.begin(9600); // Iniciando slave bluetooth
}


// --------------------------------------------------------------------------
// Para análisis de señales Bluetooth
// --------------------------------------------------------------------------
void evaluarSerial(){
  // Movimiento de motores
  if (primerDato == 1) { //Movimiento para adelante
    motorI.setDireccion(1);
    motorD.setDireccion(1);
  }
  else if (primerDato == 2) { //Movimiento para la izquierda
    motorD.setDireccion(1);
    motorI.setDireccion(0);
  }
  else if (primerDato == 3) { //Movimiento en reversa
    motorI.setDireccion(2);
    motorD.setDireccion(2);
  }
  else if (primerDato == 4) { //Movimiento para la derecha
    motorI.setDireccion(1);
    motorD.setDireccion(0);
  }

  // Movimiento de servos
  else if (primerDato >= 10 && 145 >= primerDato){
    servoI.write((primerDato+45)-10); // Movimiento brazo izquierdo
    motorI.setDireccion(0);
    motorD.setDireccion(0);
  }
  else if (primerDato >= 150 && 285 >= primerDato){
    servoD.write((primerDato+45)-150); // Movimiento brazo derecho
    motorI.setDireccion(0);
    motorD.setDireccion(0);
  }

  // Sin movimiento
  else {
    motorI.setDireccion(0);
    motorD.setDireccion(0);
  }
}
// --------------------------------------------------------------------------
//
// --------------------------------------------------------------------------


void loop() {
  // put your main code here, to run repeatedly:
  while (Serial.available()) {
     primerDato = Serial.read();
     Serial.println(primerDato);
     evaluarSerial();
  }  
  delay(10);
  
  
}
