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

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([  // Setear orientación
      //DeviceOrientation.landscapeRight,  // Horizontales
      //DeviceOrientation.landscapeLeft,   // Horizontales
      DeviceOrientation.portraitUp,      // Vertical del reves
      //DeviceOrientation.portraitDown,    // Vertical normal
    ]);
    //startAnimation();
  }
  
  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 5000));
    setState(() => this.animate=true);
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
                BtnConnection(screenstate: ScreenState.FIRST_PAGE,),
              ],
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOutCubic,  // curva de animación
            duration: Duration(milliseconds: 1500),
            top: animate
                ? (height - 333.76)/2 - 265/6 
                : (height - 157)/2 - 265/6,
            left: animate
                ? (width - 294)/2
                : (width - 138)/2,
            height: animate ? 333.76 : 157,
            child: AnimatedRotation(
              curve: Curves.easeInOutCubic,  // curva de animación
              duration: Duration(milliseconds: 1500),
              turns: animate ? -0.10: 0,
              child: Image.asset("assets/wall_e.png"),
            ),
          ),
          Positioned(
            bottom: 6,
            right: 10,
            width: width/5.5,
            child: Image.asset('assets/phycom_logo.png'),
          ),
        ],
      ),
    );
  }

}