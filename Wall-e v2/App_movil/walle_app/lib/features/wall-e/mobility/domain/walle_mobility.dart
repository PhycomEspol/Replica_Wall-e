import 'dart:math';
import 'package:scidart/src/numdart/numdart.dart' show Array, pi, pow, sqrt;

import 'package:walle_app/features/wall-e/mobility/domain/math_model.dart';

class Mobility{
  // Velocidad de las orugas
  double velocityLeft = 0;
  double velocityRight = 0;

  // Vector velocidad
  double _X_vector = 0;
  double _Y_vector = 0;
  double _theta = 90;

  double get theta => _theta;

  set theta(double value) {
    _theta = value;
  } // orientación

  void setVector(double xValue, double yValue) {
    this._X_vector = xValue;
    this._Y_vector = yValue;

    this._theta = atan(yValue/xValue)*(180/pi);
    if(this._theta<0){
      this._theta += 180;
    }
    if(yValue<0){
      this._theta += 180;
    }
    if(yValue==0 && xValue!=0){
      this._theta = xValue>0 ? 0 : 180;
    }

    updateVelocity();
  } 
  
  MathModel mathModel = MathModel();

  static bool isStickPressed = false;
  
  void updateVelocity() {
    double r = sqrt(pow(_X_vector, 2) + pow(_Y_vector, 2));
    r = double.parse(r.toStringAsFixed(2));
    if (r>1) r=1.0;

    //print("x: $_X_vector , y: $_Y_vector , theta: $_theta, r: $r");
    Array velocities = mathModel.getVelocities(this._theta, r);

    this.velocityLeft = velocities[0];
    this.velocityRight = velocities[1];
  }



}