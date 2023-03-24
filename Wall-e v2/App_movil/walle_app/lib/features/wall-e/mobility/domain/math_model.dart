import 'package:scidart/src/numdart/numdart.dart' show Array, pi, sin;
import 'package:walle_app/core/config.dart';

enum MobilityType { FORWARD, BACKWARD, PURE_RIGHT, PURE_LEFT, COMPLEX_MOVE }

class MathModel {

  double _variation = 5;
  MobilityType getMobilityType(double theta) {
    if ((theta<90+this._variation) && (theta>90-this._variation)) {
      return MobilityType.FORWARD;
    } else if ((theta<270+this._variation) && (theta>270-this._variation)) {
      return MobilityType.BACKWARD;
    } else if ((theta<180+this._variation) && (theta>180-this._variation)) {
      return MobilityType.PURE_LEFT;
    } else if ((theta<0+this._variation) || (theta>360-this._variation)) {
      return MobilityType.PURE_RIGHT;
    } else {
      return MobilityType.COMPLEX_MOVE;
    }
  }

  double leftWheelValue(double theta){
    theta = theta - (theta/360).floor()*360.0;
                  // Corrector, en caso de theta>=360, lo convierte a un valor
                  // de entre 0 y 360
    return theta<90    ?  1
          : theta<=270 ? sin(theta*(pi/180))
                       : -1;
  }

  double rightWheelValue(double theta){
    return -leftWheelValue(theta+180);
  }

  Array getVelocities(double theta, double r) {
    if (theta.isNaN || r.isNaN){
      return Array([0.0, 0.0]);
    }

    Array velocities = Array.empty();
    //print(getMobilityType(theta));
    switch (getMobilityType(theta)) {
      case MobilityType.FORWARD:
        velocities.add(1); // for the left wheel
        velocities.add(1); // for the right wheel
        break;
      case MobilityType.BACKWARD:
        velocities.add(-1); // for the left wheel
        velocities.add(-1); // for the right wheel
        break;
      case MobilityType.PURE_RIGHT:
        velocities.add(1); // for the left wheel
        velocities.add(0); // for the right wheel
        break;
      case MobilityType.PURE_LEFT:
        velocities.add(0); // for the left wheel
        velocities.add(1); // for the right wheel
        break;
      case MobilityType.COMPLEX_MOVE:
        velocities.add(leftWheelValue(theta));  // for the left wheel
        velocities.add(rightWheelValue(theta)); // for the right wheel
        break;
      default:
        velocities.add(0); // for the left wheel
        velocities.add(0); // for the right wheel
        print(velocities);
    }

    return velocities*Array([r*maxVelocity, r*maxVelocity]);
  }



}


/*

  Array2d matrixModel(double theta, double L) {
    theta = theta*pi/180; // pasamos a radianes
    return Array2d([
      Array([cos(theta)/2, cos(theta)/2,  0.0]),
      Array([sin(theta)/2, sin(theta)/2,  0.0]),
      Array([         1/L,         -1/L, -1.0]),
    ]);
  }

  //List<double> getVelocities(List<List<double>> matrixList, List<double> vector) {
  Array2d getVelocities(double theta, Array2d vector) {
    var result = Array2d.empty();
    Array2d matrix = matrixModel(theta, 1);

    print(matrix);
    double det = matrixDeterminant(matrix); // Si es != 0, es inversible
    if (det != 0) {
      // Operación a realizar: matrix+^-1 * vector
      // Inversa
      var matrix_inverse = matrixInverse(matrix);

      // Producto
      result = matrixDot(matrix_inverse, vector);
      //print("Resultado");
      //print(result);
      //print('\n'+
      //  '1er Elemento: ${result[0].l[0]} \n'+
      //  '2do Elemento: ${result[1].l[0]} \n'+
      //  '3er Elemento: ${result[2].l[0]} \n'
      //);
    } else {
      // TODO: Throw error para cuando == 0
    }

    return result;
  }
  */
