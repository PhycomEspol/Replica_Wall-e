import 'package:flutter/material.dart';
import 'package:walle_app/core/ui-system/colors.dart';

class CustomAlert extends StatelessWidget {
  double width;
  double height;
  double roundedRadius;
  Color colorContainerAbove;
  Color colorContainerBelow;
  
  double closeButtonSize;

  double circleRadius;
  IconData circleIcon;
  Color circleColor;

  String title;
  Color titleColor;

  String content;
  Color contentColor;

  String textButton;
  Color textButtonColor;
  Color buttonColor;
  Size? buttonSize;

  //final VoidCallback? onPressedButton;
  //final VoidCallback? onPressedClose;

  CustomAlert({
    //this.onPressedButton,  // Functions
    //this.onPressedClose,
    this.width = 280.0,                        // Alert characteristics
    this.height = 200.0,
    this.roundedRadius = 16.0,
    this.colorContainerAbove = Colors.white,
    this.colorContainerBelow = red,
    this.closeButtonSize = 24.0,  // Close Button
    this.circleRadius = 60.0,  // Circle settings
    required this.circleIcon,
    this.circleColor = red,
    required this.title,                       // Title settings
    this.titleColor = Colors.black,
    required this.content,                      // Content settings
    this.contentColor = Colors.white,
    required this.textButton,                       // Button settings
    this.textButtonColor = Colors.black,
    this.buttonColor = Colors.white,
    this.buttonSize,
  }){
    closeButtonSize = roundedRadius>closeButtonSize ? roundedRadius 
                                                    : closeButtonSize;
    if (buttonSize==null) {buttonSize = Size(circleRadius*2 - 8, 36);}
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(roundedRadius)
      ),
      child: Stack(
        clipBehavior: Clip.none,  // Permite ver lo que sobrepasa el borde del Stack
                                  // o sea el Círculo de cabecera
        children: [
          Container(
            clipBehavior: Clip.hardEdge, // Permite matener el redondez sin importar los elementos pintados dentro
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(roundedRadius)),
            ),
            height: this.height,
            width: this.width,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, circleRadius, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.0,),
                  Expanded(
                    child: Container(
                      color: red,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 10.0),
                        child: SizedBox.expand(
                          child: Column(
                            children: [
                              Text(
                                content,
                                style: theme.textTheme.bodyText1?.copyWith(
                                  color: contentColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  shadows: [ // Permite añadirle contraste y que sea legible la letra
                                    Shadow(
                                      color: Colors.black.withOpacity(0.8),
                                      offset: Offset(0, 0),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              ElevatedButton(
                                child: Text(
                                  textButton, 
                                  style: theme.textTheme.button?.copyWith(color: textButtonColor),
                                ),
                                //onPressed: onPressedButton,
                                onPressed: () => Navigator.of(context).pop(true),
                                style: ElevatedButton.styleFrom(
                                  elevation: 2,
                                  backgroundColor: buttonColor,
                                  foregroundColor: Colors.pink[100],
                                  minimumSize: buttonSize, 
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -circleRadius,
            left: -circleRadius+width/2,
            child: CircleAvatar(
              backgroundColor: circleColor,
              radius: circleRadius,
              child: Icon(
                circleIcon, 
                size: circleRadius*(6/5),
                color: Colors.white
              )
            ),
          ),
          Positioned(
            top: 0 - roundedRadius/2,
            left: width - closeButtonSize*2 + roundedRadius/2,
            child: Material(
              // Material is to shows the Splash and Highlight color
              // if we don't use it, these colors shows behind the container.
              // This occurs when we set the colors' decoration of container. 
              // Referencia: https://stackoverflow.com/questions/46681318/how-to-make-the-highlight-color-of-an-iconbutton-appear-over-parent-widget
              type: MaterialType.transparency,
              child: IconButton(
                /*onPressed: onPressedClose==null
                          ? () => Navigator.of(context).pop(false)
                          : onPressedClose,
                */
                onPressed: () => Navigator.of(context).pop(false),
                padding: const EdgeInsets.all(0),
                iconSize: closeButtonSize,
                splashRadius: roundedRadius,
                splashColor: Colors.red[200],
                //highlightColor: Colors.red[300],
                icon: const Icon(  // TODO: Animate Icon when click
                  Icons.close_rounded, 
                  color: Colors.black,
                  //weight: 4,
                )
              )
            ),
          ),
        ],
      ),
    );
  }


}