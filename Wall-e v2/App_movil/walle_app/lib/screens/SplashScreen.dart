import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walle_app/core/app_assets.dart';
//import 'package:go_router/go_router.dart';
import 'package:walle_app/core/navigation/routes.dart';

import 'package:walle_app/core/ui-system/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {

  late double height;
  late double width;
  late double initialWidth;
  final double fractionWidth = 7/12; // Fracción de pantalla que ocupará imagen wall-e

  final animateTime = Duration(milliseconds: 1000);
  late bool animate = false;

  @override
  void initState() {
    super.initState();

    // Setear orientación
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,  // Horizontales
      DeviceOrientation.landscapeLeft,   // Horizontales
      DeviceOrientation.portraitUp,        // Vertical del reves
      //DeviceOrientation.portraitDown,    // Vertical normal
    ]);

    // Animación Zoom-In
    startAnimation();
    
    // Navigation to Home
    goToHomeScreenNav();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    print("Dispose Splash");
  }

  Future startAnimation() async {
    //await Future.delayed(Duration(milliseconds: 200));
    setState(() => this.animate=true);
  }
  
  Future goToHomeScreenNav() async {
    //print("Before in splash");
    //print(ModalRoute.of(context)?.settings.name);
    await Future.delayed(
      Duration(milliseconds: 3000),
      () {
        Navigator.of(context).pushReplacementNamed(
          MyRouter.homePath,
          //arguments: , // TODO: Pass transitionBuilding function as argument
        );
        print("Screen name After in splash");
        print(ModalRoute.of(context)?.settings.name);
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    initialWidth = width/2.5;
    
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            // Animación
            curve: Curves.easeInOutCubic,  // curva de animación
            duration: animateTime,
            // Posición
            top: animate
                ? (height - width*fractionWidth)/2 //centrado verticalmente
                  - height/10                      // desplazamiento para arriba
                : (height - initialWidth)/2 //centrado verticalmente
                  - height/10,              // desplazamiento para arriba
            left: animate
                ? (width - width*fractionWidth)/2
                : (width - initialWidth)/2,
            // Tamaño
            width: animate ? width*fractionWidth : initialWidth,
            // elemento
            child: AnimatedOpacity(
              curve: Curves.easeInOutCubic,  // curva de animación
              duration: animateTime,
              opacity: animate ? 1 : 0,
              child: Image.asset(AppAssets.imgPHYCOM),
            ),
          ),
          Positioned(
            bottom: (height - 26)/2 // hasta aquí está centrado verticarlmente
                    - height/5,     // desplazamiento para abajo
            left: (width - (width*fractionWidth - 60))/2, // centramos
            child: Center(
              child: defaultTargetPlatform == TargetPlatform.iOS // for iOS
                    ? CupertinoActivityIndicator(
                      color: Colors.white,
                      radius: 30,
                    )
                    : Column(                                    // for Android
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 6,
                            width: width*fractionWidth - 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.white,
                                color: sky_blue,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Cargando...",
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
            ),
          ),
        ],
      )
    );
  }

}
