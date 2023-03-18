import 'package:flutter/material.dart';
import 'package:walle_app/core/navigation/routes.dart';

import 'package:walle_app/core/ui-system/themes.dart';


final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
final bool rotateAutomaticly = true;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wall-e App',
      theme: MyTheme.controlScreenTheme,
      initialRoute: MyRouter.splashPath,
      onGenerateRoute: MyRouter.generateRoute,
      navigatorObservers: [routeObserver],
    );
  }
}
