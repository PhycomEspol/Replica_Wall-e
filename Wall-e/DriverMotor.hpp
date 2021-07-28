// Para controlar los motores, usando L298N
/*
 * currentPin = Habilita la corriente
 * dirPin = Produce movimiento hacia el frente
 * retroPin = Produce retroceso
 * 
 */

class DriverMotor{
  public:
    // Constructor
    DriverMotor(uint8_t currentPin, uint8_t dirPin, uint8_t retroPin);
    
    // Constructor por defecto
    ~DriverMotor();

    void setVelocidad(int pwmNum);

  private:
    uint8_t this->currentPin, this->dirPin, this->retroPin;
    bool this->noMove;
  
}

// Definiciones
DriverMotor::DriverMotor(uint8_t currentPin, uint8_t dirPin, uint8_t retroPin) {
  this->currentPin = currentPin;
  this->dirPin = dirPin;
  this->retroPin = retroPin;

  pinMode(currentPin, OUTPUT);  // Iniciando el pin de electricidad al motor
  pinMode(dirPin, OUTPUT);
  pinMode(retroPin, OUTPUT);

  this->noMove = false;
}

DriverMotor::~DriverMotor(){
  // Nada
}

void DriverMotor::setVelocidad(int pwmValor) { // De 0 a 255
  // Para regular la velocidad
  if (pwmValor>255) pwmValor = 255;
  else if (pwmValor<-255) pwmValor = -225;

  // Control de velocidad
  if (pwmValor > 0) {
    analogWrite(currentPin, pwmValor);
    digitalWrite(dirPin, HIGH);
    digitalWrite(retroPin, LOW;
    noMove = true;
  }
  else if (pwmValor < 0) {
    analogWrite(currentPin, pwmValor);
    digitalWrite(dirPin, LOW);
    digitalWrite(retroPin, HIGH);
    noMove = true;
  }

  //Put something here, if the car is stopped
  else if (pwmValor == 0) {
    analogWrite(currentPin, pwmValor);
    noMove = false;
  }
}
