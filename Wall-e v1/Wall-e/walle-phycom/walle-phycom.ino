#include <Wire.h>
#include <Servo.h>
#include "DriverMotor.hpp"

// Setting up variables

// Pines para los motores
#define DIRECCION_D_PIN 6  //IN3
#define RETRO_D_PIN 5  //IN4
#define PWM_VEL_D_PIN 3  //ENB
#define DIRECCION_I_PIN 10 //IN1
#define RETRO_I_PIN 9  //IN2
#define PWM_VEL_I_PIN 11  //ENA

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
String primerDato;


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
  if (primerDato == "w") {
    motorI.setDireccion(1);
    motorD.setDireccion(1);
  }
  else if (primerDato == "a") {
    motorD.setDireccion(1);
    motorI.setDireccion(0);
  }
  else if (primerDato == "s") {
    motorI.setDireccion(2);
    motorD.setDireccion(2);
  }
  else if (primerDato == "d") {
    motorI.setDireccion(1);
    motorD.setDireccion(0);
  }

  // Movimiento de servos
  else if (isdigit(primerDato[0])) {  // Revisamos que los datos sean númericos "ANGULO-BI/BD"
    int angulo = atoi(getValor(primerDato, '-', 0).c_str());
    String brazo = getValor(primerDato, '-', 1);
    if (angulo <= 180 && angulo >=45) { // Entre 0 y 180 grados
      if (brazo.compareTo("bd") == 0) servoD.write(angulo);
      if (brazo.compareTo("bi") == 0) servoI.write(angulo);
    }
  }

  // Sin movimiento
  else {
    motorI.setDireccion(0);
    motorD.setDireccion(0);
  }
}

String getValor(String data, char separador, int index)
{
  int found = 0;
  int strIndex[] = {0, -1};
  int maxIndex = data.length()-1;

  for(int i=0; i<=maxIndex && found<=index; i++){
    if(data.charAt(i)==separador || i==maxIndex){
        found++;
        strIndex[0] = strIndex[1]+1;
        strIndex[1] = (i == maxIndex) ? i+1 : i;
    }
  }

  return found>index ? data.substring(strIndex[0], strIndex[1]) : "";
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
