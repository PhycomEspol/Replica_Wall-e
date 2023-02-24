import '../body/walle_body.dart';
import '../arm/arm.dart';

class Wall_e{
  late Arm _rightArm;
  late Arm _leftArm;
  late Body _body;

  Arm get leftArm => _leftArm;
  Arm get rightArm => _rightArm;
  Body get body => _body;

  Wall_e() {
    this._leftArm = Arm(ArmType.LEFT);
    this._rightArm = Arm(ArmType.RIGHT);
    this._body = Body();
  }

  void sendMessage(){

  }

}