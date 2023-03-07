import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {

  late double height;
  late double width;
  late double initialWidth;
  final double fractionWidth = 7/12;

  final duration = Duration(milliseconds: 1500);
  late bool animate = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([  // Setear orientación
      //DeviceOrientation.landscapeRight,  // Horizontales
      //DeviceOrientation.landscapeLeft,   // Horizontales
      DeviceOrientation.portraitUp,        // Vertical del reves
      //DeviceOrientation.portraitDown,    // Vertical normal
    ]);
    startAnimation();
    /*
    Future.delayed(
      Duration(milliseconds: 2000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => /*Page constructor*/
        )
      )
    );*/
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() => this.animate=true);
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
            duration: duration,
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
              duration: duration,
              opacity: animate ? 1 : 0,
              child: Image.asset('assets/phycom_logo.png'),
            ),
          ),
          Positioned(
            bottom: (height - 26)/2 // hasta aquí está centrado verticarlmente
                    - height/5,     // desplazamiento para abajo
            left: (width - (width*fractionWidth - 60))/2, // centramos
            child: Center(
              child: Column(
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
