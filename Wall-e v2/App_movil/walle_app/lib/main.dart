import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:walle_app/routes.dart';

import 'package:walle_app/ui/themes.dart';

import 'package:walle_app/ui/screens/SplashScreen.dart';
import 'package:walle_app/ui/screens/ConnectionScreen.dart';
import 'package:walle_app/ui/screens/RemoteControlScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp.router(
      title: 'Wall-e App',
      theme: MyTheme.controlScreenTheme,
      routeInformationParser: Router.generateRoute().routeInformationParser,
      routerDelegate: Router.generateRoute().routerDelegate,
    );*/
    return MaterialApp(
      title: 'Wall-e App',
      theme: MyTheme.controlScreenTheme,
      initialRoute: MyRouter.splashPath,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
