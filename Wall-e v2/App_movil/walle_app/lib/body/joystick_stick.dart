import 'package:flutter/material.dart';
import 'package:walle_app/ui/colors.dart';


class CustomStick extends StatelessWidget {
  
  //void Function(DragStartDetails)? onPanStart;
  //void Function(DragEndDetails)? onPanEnd;

  double diameter;
  CustomStick({super.key,
    required this.diameter,
    //this.onPanStart,
    //this.onPanEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.diameter,
      height: this.diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(153, 113, 113, 113),
        border: Border.all(
          color: dark_gray_1,
          width: 1.5,
        ),
        
      ),
    );
  }

  
}
