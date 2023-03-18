import 'package:flutter/material.dart';
import 'package:walle_app/screens/ScreenState.dart';

import 'package:walle_app/core/ui-system/colors.dart';

class BtnConnection extends StatefulWidget {

  late ScreenState screenstate;
  late Color backgroundColor;
  VoidCallback screenToChange;

  BtnConnection({
    super.key,
    required this.screenstate,
    required this.screenToChange,
  }) {
    if (this.screenstate==ScreenState.CONTROL_PAGE) {
      backgroundColor = Colors.transparent;
    }else{
      backgroundColor = Colors.white;
    }
  }
  
  @override
  State<BtnConnection> createState() => _BtnConnectionState();

}

class _BtnConnectionState extends State<BtnConnection> {
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.screenstate==ScreenState.CONTROL_PAGE)
            RotatedBox(
              quarterTurns: 2,
              child: Icon(
                Icons.logout_rounded,
                size: 24,
                color: light_gray_2,
              )
            ),
          if (widget.screenstate==ScreenState.CONTROL_PAGE)
            SizedBox(width: 8),
          Text(
            widget.screenstate==ScreenState.CONTROL_PAGE
              ? "SALIR"
              : "CONECTAR", 
            style: Theme.of(context).textTheme.button?.copyWith(
              color: widget.screenstate==ScreenState.CONTROL_PAGE // en caso contratio, significa que es FIRST_PAGE
                ? Colors.white
                : Colors.black,
            )
          ),
        ]
      ),
      style: ElevatedButton.styleFrom(
        maximumSize: Size(128, 40),
        primary: widget.backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: widget.screenstate==ScreenState.CONTROL_PAGE
            ? BorderRadius.only(bottomRight: Radius.circular(20))
            : BorderRadius.all(Radius.circular(20)),
        ),
        onPrimary: widget.screenstate==ScreenState.CONTROL_PAGE
          ? yellow
          : null,

      ),
      onPressed: () => onPressed(), 
      onHover: (value) => {
        if (widget.screenstate==ScreenState.CONTROL_PAGE){
          widget.backgroundColor = value? yellow : Colors.transparent
        }
      },
    );

  }

  void onPressed() {
    /*
    if (widget.screenstate==ScreenState.FIRST_PAGE){
      // TODO: Conectar Bluetooth
      //print("Cambio a CONTROL_PAGE");
    }else{
      // TODO: Desconectar Bluetooth
      //print("Cambio a FIRST_PAGE");
    }
    */
    widget.screenToChange();
    print("Button pressed");
    
    //setState(() {});
  }
  
}