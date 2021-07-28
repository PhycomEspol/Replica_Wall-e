#include <Wire.h>
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
#define ANALOG_D_PIN 10
#define ANALOG_I_PIN 11

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
  Serial.begin(38400); // Iniciando slave bluetooth


}


// --------------------------------------------------------------------------
// Para análisis de señales Bluetooth
// --------------------------------------------------------------------------
void leerSerial() {
  char input;
  while (Serial.available() >= 1) {
    input = Serial.read();
  }


  // Para eliminar la sobrecarga
  if (serialLength == MAX_SERIAL_LENGTH) {
    evaluarSerial();
    serialBuffer[0] = 0;
    serialLength = 0;
  }

}

void evaluarSerial(){

  switch(primerChar) {
    // Movimiento de motores
    case "w":
      // Mover para adelante
      break;
    case "a":
      // Girar a la izquierda
      break;
    case "s":
      // Retroceder
      break;
    case "d":
      // Girar a la derecha
      break;
    default: // Dejar de suministrar electricidad
      break;

    // Movimiento de servos
  }
  
}
// --------------------------------------------------------------------------
//
// --------------------------------------------------------------------------


void loop() {
  // put your main code here, to run repeatedly:

}



/*
void readSerial() {

	// Read incoming byte
	char inchar = Serial.read();

	// If the string has ended, evaluate the serial buffer
	if (inchar == '\n' || inchar == '\r') {

		if (serialLength > 0) evaluateSerial();

		serialBuffer[0] = 0;
		serialLength = 0;

	// Otherwise add to the character to the buffer
	} else {
		  if (serialLength == 0) firstChar = inchar;
      else {
        serialBuffer[serialLength-1] = inchar;
        serialBuffer[serialLength] = 0;
      }
		serialLength++;

		// To prevent overflows, evalute the buffer if it is full
		if (serialLength == MAX_SERIAL_LENGTH) {
			evaluateSerial();
			serialBuffer[0] = 0;
			serialLength = 0;
		}
	}
}
*\
