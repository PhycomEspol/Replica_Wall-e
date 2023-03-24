import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walle_app/core/app_assets.dart';
import 'package:walle_app/core/config.dart';

import 'package:walle_app/features/wall-e/arm/presentation/arm_slider.dart';
import 'package:walle_app/features/connection/presentation/btn_connection.dart';
import 'package:walle_app/features/wall-e/mobility/presentation/joystick.dart';
import 'package:walle_app/main.dart';
import 'package:walle_app/core/navigation/routes.dart';
import 'package:walle_app/core/common-components/alerts.dart';
import 'package:walle_app/screens/ConnectionScreen.dart';
import 'package:walle_app/screens/ScreenState.dart';


class RemoteControlScreen extends StatefulWidget {
  const RemoteControlScreen({super.key});

  @override
  State<RemoteControlScreen> createState() => _RemoteControlState();

  static void setOrientation() async {
    if (rotateAutomaticly) {
      SystemChrome.setPreferredOrientations([  // Setear orientación
        //DeviceOrientation.portraitUp,      // Vertical normal
        //DeviceOrientation.portraitDown,    // Vertical del reves
        DeviceOrientation.landscapeRight,  // Horizontales
        DeviceOrientation.landscapeLeft,   // Horizontales
      ]);
    }
  }

}

class _RemoteControlState extends State<RemoteControlScreen> with RouteAware{
  //wall_e = Wall_e();
  
  @override
  void initState() {
    super.initState();
    wall_e.initState();
  }

  // ---------------------------- Route Observer ----------------------------
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute<dynamic>);
  }

  @override
  void didPop() {
    final route = ModalRoute.of(context)?.settings.name;
    print('\ndidPop Control route: $route');
    ConnectionScreen.setOrientation();
  }

  @override
  void didPush() {
    final route = ModalRoute.of(context)?.settings.name;
    print('\ndidPush Control route: $route');
  }
  // ------------------------------------------------------------------------

  @override
  Future<void> dispose() async {
    super.dispose();
    print("Dispose Control");
  }

  void closeConnectionNav()  {
    print("Control button pressed");
    
    print("Screen name Before in control");
    print(ModalRoute.of(context)?.settings.name);
    print(Navigator.of(context));
    Future.delayed(
      Duration(milliseconds: 500),
      () {
        Navigator.of(context).pushNamedAndRemoveUntil( // Elimina lo anterior y lanza de nuevo el HomeScreen
          MyRouter.homePath,
          (Route<dynamic> route) => false,
          //arguments: , // TODO: Pass transitionBuilding function as argument
        );
        print("Screen name After in control");
        print(ModalRoute.of(context)?.settings.name);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async {
        final selectedValue = await showDialog<bool>(
          context: context, 
          builder:(context) {
            return CustomAlert(
              circleIcon: Icons.bluetooth_disabled_rounded,
              title: "Desconectar",
              content: "¿Deseas abandonar el control del \nWall-e?",
              textButton: "Sí",
            );
          },
        );

        if (selectedValue!){ // Seleccionó SALIR
          return Future.value(selectedValue);
        } else { // null o seleccionó NO
          return Future.value(false);
        }
        
      },
      child: Scaffold(
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
                  screenToChange: closeConnectionNav,
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
              child: Image.asset(AppAssets.imgPHYCOM),
            ),
          ],
        ),
      )
    );
  }

}