import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

import 'package:walle_app/core/config.dart';
import 'joystick_base.dart';
import 'joystick_stick.dart';
import 'package:walle_app/features/wall-e/mobility/domain/walle_mobility.dart';

class MyJoystick extends StatefulWidget {
  
  double diameterStick;
  double diameterBase;

  MyJoystick({
    super.key,
    required this.diameterBase,
    required this.diameterStick,
  });

  @override
  _MyJoystickState createState() => _MyJoystickState(
    diameterBase: this.diameterBase,
    diameterStick: this.diameterStick,
  );
}

class _MyJoystickState extends State<MyJoystick> {
  JoystickMode _joystickMode = JoystickMode.all;
  double _xBefore = 0;
  double _yBefore = 0;

  double _x = 0;
  double _y = 0;

  double diameterBase;
  double diameterStick;

  _MyJoystickState({
    required this.diameterBase,
    required this.diameterStick,
  });

  @override
  Widget build(BuildContext context) {
    return Joystick(
      mode: this._joystickMode, 
      stick: CustomStick(diameter: diameterStick),
      base: CustomBase(
        dBase: diameterBase,
        dStick: diameterStick,
      ),
      listener: (StickDragDetails details) {
        _xBefore = _x;
        _yBefore = _y;
        _x = double.parse(details.x.toStringAsFixed(2));
        _y = - double.parse(details.y.toStringAsFixed(2)); // Naturalmente arriba es negativo y abajo positivo

        if(_x!=_xBefore || _y!=_yBefore){ // Cuando presenta cambios de posición
          //print("Posición -> \n\tx: "+_x.toString()+"\n\ty: "+_y.toString());
          //print("isStickPressed: ${Mobility.isStickPressed}");
          
          wall_e.mobility.setVector(_x, _y);
          //print("Theta: ${wall_e.mobility.theta}");
          wall_e.sendMessage();
        }
      },
      onStickDragStart: () {
        Mobility.isStickPressed = true;
      },
      onStickDragEnd: () {
        Mobility.isStickPressed = false;
      },
    );
  }
}
