import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:go_router/go_router.dart';
import 'package:walle_app/screens/ErrorPage.dart';
import 'package:walle_app/screens/SplashScreen.dart';
import 'package:walle_app/screens/ConnectionScreen.dart';
import 'package:walle_app/screens/RemoteControlScreen.dart';

/*
class Router {

  static GoRouter generateRoute(){
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: 'SplashScreen',
          path: '/',
          builder: (context, state) => SplashScreen(),
          pageBuilder: (context, state) {
            print("From Route: ");
            print(ModalRoute.of(context)?.settings.name);
            return MaterialPage(child: SplashScreen());
          }

        ),
        GoRoute(
          name: 'HomeScreen',
          path: '/HomeScreen',
          builder: (context, state) => ConnectionScreen(),
          pageBuilder: (context, state) {
            print("From Route: ");
            print(GoRouter.of(context)..settings.name);
            return MaterialPage(child: ConnectionScreen());
          }
        ),
        GoRoute(
          name: 'ControlScreen',
          path: '/ControlScreen',
          builder: (context, state) => RemoteControlScreen(),
          pageBuilder: (context, state) {
            print("From Route: ");
            print(ModalRoute.of(context)?.settings.name);
            return MaterialPage(child: RemoteControlScreen());
          }
        ),
      ]
    );

    return router;
  }

}
*/

class MyRouter {
  static const splashPath = 'SplashScreen';
  static const homePath = 'HomeScreen';
  static const controlPath = 'ControlScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch(settings.name) {
      case MyRouter.splashPath:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
          /*transitionsBuilder:(context, animation, secondaryAnimation, child) {
            return child;
          },*/
        );
      case MyRouter.homePath:
        ConnectionScreen.setOrientation();
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => ConnectionScreen(),
          transitionsBuilder:(context, animation, secondaryAnimation, child) {
            return child;
          },
        );
      case MyRouter.controlPath:
        RemoteControlScreen.setOrientation();
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => RemoteControlScreen(),
          /*transitionsBuilder:(context, animation, secondaryAnimation, child) {
            return child;
          },*/
        );
      default:
        return MaterialPageRoute(
          builder:(context) => ErrorPage()
        );
    }


  }


}