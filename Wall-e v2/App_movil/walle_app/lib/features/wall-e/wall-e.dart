import 'package:walle_app/features/wall-e/arm/domain/arm.dart';
import 'package:walle_app/features/wall-e/mobility/domain/walle_mobility.dart';

class Wall_e{
  late Arm _rightArm;
  late Arm _leftArm;
  late Mobility _mobility;

  Arm get leftArm => _leftArm;
  Arm get rightArm => _rightArm;
  Mobility get mobility => _mobility;

  Wall_e() {
    this._leftArm = Arm(ArmType.LEFT);
    this._rightArm = Arm(ArmType.RIGHT);
    this._mobility = Mobility();
  }

  void sendMessage(){

  }

}