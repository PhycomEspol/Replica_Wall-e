import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:walle_app/bluetooth/btn_connection.dart';
import 'package:walle_app/ui/screens/ScreenState.dart';

class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen> {

  late double height;
  late double width;
  bool animate = false;
  final Duration animationTime = Duration(milliseconds: 1500);
  late double fractionWidth = 5.5; // Fracción de pantalla que ocupará imagen wall-e

  @override
  void initState() {
    super.initState();
    this.animate=false;
    SystemChrome.setPreferredOrientations([  // Setear orientación
      //DeviceOrientation.landscapeRight,  // Horizontales
      //DeviceOrientation.landscapeLeft,   // Horizontales
      DeviceOrientation.portraitUp,      // Vertical del reves
      //DeviceOrientation.portraitDown,    // Vertical normal
    ]);
  }
  
  @override
  Future<void> dispose() async {
    super.dispose();
    print("Dispose Home");
  }

  Future startAnimation() async {
    //await Future.delayed(Duration(milliseconds: 300));
    setState(() => this.animate=true);
  }
  
  //Future goToControlNav() async {
  void goToControlNav() {
    print("Home button pressed");

    startAnimation();
    
    Future.delayed(
      animationTime, // Se ejecuta luego de que termine la animación
      () {
        Navigator.pushNamed(
          context,
          '/ControlScreen'
        );
      }
    );
    
    //Navigator.pushNamed(context, '/ControlScreen');
  }
  
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children:[
          Positioned(
            top: (height - 265)/2 - 265/6,
            //left: (width - 138)/2,
            left: (width - 114)/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wall-e",
                  style: theme.textTheme.headline5?.copyWith(color: Colors.white),
                ),
                Text(
                  "Control App",
                  style: theme.textTheme.bodyText1,
                ),
                SizedBox(height: 12,),
                SizedBox(height: 157,),
                SizedBox(height: 16,),
                BtnConnection(
                  screenstate: ScreenState.CONNECTION_PAGE, 
                  screenToChange: goToControlNav,
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOutCubic,  // curva de animación
            duration: animate 
                ? animationTime
                : Duration.zero,
            top: animate
                ? (height - 333.76)/2 - 265/6 
                : (height - 157)/2 - 265/6,
            left: animate
                ? (width - 294)/2
                : (width - 138)/2,
            height: animate ? 333.76 : 157,
            child: AnimatedRotation(
              curve: Curves.easeInOutCubic,  // curva de animación
              duration: animationTime,
              turns: animate ? -0.10: 0,
              child: Image.asset("assets/wall_e.png"),
            ),
          ),
          Positioned(
            bottom: 6,
            right: 10,
            width: height>width
                  ? width/fractionWidth
                  : width/fractionWidth * (height/width),
            child: Image.asset('assets/phycom_logo.png'),
          ),
          AnimatedOpacity(
            opacity: animate ? 1 : 0, 
            curve: Curves.easeInOutBack,  // curva de animación
            duration: animationTime,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: SizedBox(
                width: width,
                height: height,
              ),
            ),
          ),
        ],
      ),
    );
  }

}