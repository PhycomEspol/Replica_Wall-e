
import 'package:walle_app/core/app_assets.dart';

enum ArmType { LEFT, RIGHT }

class Arm{
  late ArmType _armType;
  late int _minPosition;
  late int _maxPosition;
  late String _assetName;

  ArmType get armType => _armType;
  int get maxPosition => _maxPosition;
  int get minPosition => _minPosition;
  String get assetName => _assetName;

  Arm(ArmType armType){
    this._minPosition = 45;
    this._maxPosition = 180;
    this._armType = armType;
    if(armType==ArmType.LEFT){
      this._assetName = AppAssets.svgLEFT_ARM;
      //this._assetName = "assets/BRAZO_IZQ.png";
    }else if(armType==ArmType.RIGHT){
      this._assetName = AppAssets.svgRIGHT_ARM;
      //this._assetName = "assets/BRAZO_DER.png";
    }
  }

  int _actualPosition = 45;
  double get actualPosition => _actualPosition.toDouble() ;
  void setPosition(double actualPosition) {
    this._actualPosition = actualPosition.round().toInt();
  }

}