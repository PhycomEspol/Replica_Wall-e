import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:walle_app/ui/themes.dart';

import 'package:walle_app/ui/screens/SplashScreen.dart';
import 'package:walle_app/ui/screens/ConnectionScreen.dart';
import 'package:walle_app/ui/screens/RemoteControlScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  // Root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.controlScreenTheme,
      initialRoute: '/Splash',
      //home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Splash': (context) => SplashScreen(),
        '/HomeScreen': (context) => ConnectionScreen(),
        '/ControlScreen': (context) => RemoteControlScreen(),
      },
    );
  }
}
