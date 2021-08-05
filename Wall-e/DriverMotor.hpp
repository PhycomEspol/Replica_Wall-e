// Para controlar los motores, usando L298N

/*
 * currentPin = Habilita la corriente/Enabler
 * dirPin = Produce movimiento hacia el frente/IN
 * retroPin = Produce retroceso/IN Inverso
 * 
 */

class DriverMotor{
  public:
    // Constructor
    DriverMotor(uint8_t _currentPin, uint8_t _dirPin, uint8_t _retroPin);
    
    // Constructor por defecto
    ~DriverMotor();

    void setDireccion(int direccion);

  private:
    uint8_t currentPin, dirPin, retroPin;
  
};

// Definiciones
DriverMotor::DriverMotor(uint8_t _currentPin, uint8_t _dirPin, uint8_t _retroPin) {
  currentPin = _currentPin;
  dirPin = _dirPin;
  retroPin = _retroPin;

  pinMode(currentPin, OUTPUT);  // Iniciando el pin de electricidad al motor
  pinMode(dirPin, OUTPUT);
  pinMode(retroPin, OUTPUT);

}

DriverMotor::~DriverMotor(){
  // Nada
}

void DriverMotor::setDireccion(int direccion) { // De 0 a 255
  switch (direccion) {

    case 1: //forward
      digitalWrite(currentPin, HIGH);
      digitalWrite(dirPin, HIGH);
      digitalWrite(retroPin, LOW);
      break;
    case 2: //backward
      digitalWrite(currentPin, HIGH);
      digitalWrite(dirPin, LOW);
      digitalWrite(retroPin, HIGH);
      break;

    default: //still
      digitalWrite(currentPin, LOW);
      break;

  }
 
}
