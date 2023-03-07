import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walle_app/arm/arm_slide.dart';
import 'package:walle_app/bluetooth/btn_connection.dart';
import 'package:walle_app/body/joystick.dart';
import 'package:walle_app/ui/screens/ScreenState.dart';
import 'package:walle_app/wall-e/wall-e.dart';


class RemoteControl extends StatefulWidget {
  const RemoteControl({super.key});

  @override
  State<RemoteControl> createState() => _RemoteControlState();
}

class _RemoteControlState extends State<RemoteControl> {
  Wall_e wall_e = Wall_e();
  
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([  // Setear orientación
      DeviceOrientation.landscapeRight,  // Horizontales
      DeviceOrientation.landscapeLeft,   // Horizontales
      //DeviceOrientation.portraitUp,      // Vertical del reves
      //DeviceOrientation.portraitDown,    // Vertical normal
    ]);
    
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          // TODO: Notch para coreografías
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BtnConnection(
                screenstate: ScreenState.CONTROL_PAGE,
                /*screenToChange: Future.delayed(
                  Duration(milliseconds: 1000),
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => /*Page constructor*/
                    )
                  )
                ),*/
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 225,
                    height: 225,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ArmSlide(
                          wall_e.leftArm, 
                          heightSlide: 225,
                        ),
                        SizedBox(width: 68,),
                        ArmSlide(
                          wall_e.rightArm, 
                          heightSlide: 225,
                        ),
                      ],
                    ),
                  ),
                  MyJoystick(
                    diameterBase: 225,
                    diameterStick: 28,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: TextButton(
                  onLongPress: () { 
                    // TODO: pop-up autores de la app
                  },
                  onPressed: () {  },
                  child: Text(
                    "Autores...",
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: Colors.white.withOpacity(0.3)
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 8,
            width: MediaQuery.of(context).size.height/5.5,
            child: Image.asset('assets/phycom_logo.png'),
          ),
        ],
      ),
    );
  }

}