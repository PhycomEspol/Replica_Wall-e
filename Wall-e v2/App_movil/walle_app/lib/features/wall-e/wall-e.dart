import 'package:walle_app/core/config.dart';
import 'package:walle_app/features/wall-e/arm/domain/arm.dart';
import 'package:walle_app/features/wall-e/mobility/domain/walle_mobility.dart';

class Wall_e{
  late Arm _rightArm;
  late Arm _leftArm;
  late Mobility _mobility;

  Arm get leftArm => _leftArm;
  Arm get rightArm => _rightArm;
  Mobility get mobility => _mobility;

  Wall_e(); // Constructor

  void initState(){
    this._leftArm = Arm(ArmType.LEFT);
    this._rightArm = Arm(ArmType.RIGHT);
    this._mobility = Mobility();
  }

  String toString(){
    // ejemplo: "{'rightMotor':255, 'leftMotor':255, 'rightArm':80, 'leftarm':100}"
    return "{'rightMotor':${this._mobility.velocityRight}, "
          +"'leftMotor':${this._mobility.velocityLeft}, "
          +"'rightArm':${this._rightArm.actualPosition}, "
          +"'leftarm':${this._leftArm.actualPosition}}";
  }

  void sendMessage(){
    print(this.toString());
    connection.sendString(this.toString());
  }

}