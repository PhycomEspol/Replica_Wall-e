import 'package:flutter/material.dart';
import 'package:walle_app/ui/screens/ScreenState.dart';

import '../ui/colors.dart';

class BtnConnection extends StatefulWidget {

  late ScreenState screenstate;
  late Color backgroundColor;

  BtnConnection({
    Key? key,
    required this.screenstate,
  }) : super(key: key) {
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
      onPressed: onPressed, 
      onHover: (value) => {
        if (widget.screenstate==ScreenState.CONTROL_PAGE){
          widget.backgroundColor = value? yellow : Colors.transparent
        }
      },
    );

  }

  void onPressed() {
    if (widget.screenstate==ScreenState.FIRST_PAGE){
      widget.backgroundColor = Colors.transparent;
      widget.screenstate = ScreenState.CONTROL_PAGE;
      print("Cambio a CONTROL_PAGE");
    }else{
      widget.backgroundColor = Colors.white;
      widget.screenstate = ScreenState.FIRST_PAGE;
      print("Cambio a FIRST_PAGE");
    }
    print(Theme.of(context).textTheme.button?.fontSize);
    setState(() {});
  }
  
}