import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:walle_app/core/app_assets.dart';
import 'package:walle_app/features/connection/domain/connection.dart';
//import 'package:walle_app/features/connection/data/models/device.dart';
//import 'package:walle_app/features/connection/domain/entities/connection.dart';
//import 'package:walle_app/features/connection/domain/use_cases/select_device_use_case.dart';
//import 'package:go_router/go_router.dart';

import 'package:walle_app/features/connection/presentation/widgets/btn_connection.dart';
import 'package:walle_app/features/connection/presentation/widgets/side_menu_connection_widget.dart';
import 'package:walle_app/main.dart';
import 'package:walle_app/core/config.dart';
import 'package:walle_app/core/navigation/routes.dart';
import 'package:walle_app/screens/ScreenState.dart';


class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();

  static Future<void> setOrientation() async {
    if (rotateAutomaticly) {
      SystemChrome.setPreferredOrientations([  // Setear orientación
        DeviceOrientation.portraitUp,      // Vertical normal
        //DeviceOrientation.portraitDown,    // Vertical del reves
        DeviceOrientation.landscapeRight,  // Horizontales
        DeviceOrientation.landscapeLeft,   // Horizontales
      ]);
    }
  }
}

class _ConnectionScreenState extends State<ConnectionScreen> with RouteAware {

  List<BluetoothDevice> _devicesList = [];

  late double height;
  late double width;
  bool animate = false;
  final Duration animationTime = Duration(milliseconds: 1500);
  late double fractionWidth = 5.5; // Fracción de pantalla que ocupará imagen wall-e

  bool _isSideMenuOpen = false;

  @override
  void initState() {
    super.initState();
    connection = Connection();
    this.animate=false;
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
    print('\ndidPop in Connection route: $route');
  }

  @override
  void didPush() {
    final route = ModalRoute.of(context)?.settings.name;
    print('\ndidPush Connection route: $route');
  }
  // ------------------------------------------------------------------------

  @override
  Future<void> dispose() async {
    super.dispose();
    print("Dispose Home");
  }

  Future startAnimation() async {
    //await Future.delayed(Duration(milliseconds: 300));
    setState(() => this.animate=true);
  }
  
  void goToControlNav() {
    print("Home button pressed");

    startAnimation();

    print("Screen name Before in home");
    print(ModalRoute.of(context)?.settings.name);
    print(Navigator.of(context));
    Future.delayed(
      animationTime, // Se ejecuta luego de que termine la animación
      () {
        Navigator.of(context).pushNamed(
          MyRouter.controlPath
        );
        setState(() => this.animate=false);
        print("Screen name After in home");
        print(ModalRoute.of(context)?.settings.name);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      /*drawer: _isSideMenuOpen 
              ? SideMenuBluetooth(
                onCloseAction: () {
                  setState(() { this._isSideMenuOpen = false; });
                }
              ) 
              : null,
      */
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
                  screenToChange: () async {
                    bool btEnabled = await connection.requestEnable();
                    if (btEnabled) {
                        print("\n\ndespues del delay");
                        /*await connection.scanDevices().then((List<BluetoothDevice> value) {
                          _devicesList = value;
                          print("scanDevices inside then: "+_isSideMenuOpen.toString());
                        });
                        print("scanDevices outside then: "+_isSideMenuOpen.toString());
                        */
                        await connection.scanDevices();
                        setState(() {
                          _isSideMenuOpen = true;
                        });
                        print("isMenuOpen: "+_isSideMenuOpen.toString());
                      
                    }else{
                      // TODO: mostrar un pop-up
                      _devicesList = [];
                      print("No se habilitó el dispositivo");
                    }
                    print("Dispositivos: ...");
                    print(_devicesList);
                    /*
                    print("\n\nantes del delay " + btEnabled.toString());
                    await Future.delayed(Duration(milliseconds: 2000), () {
                      print(btEnabled == true);
                      btEnabled.then((bool value) {
                        print("Value de btEnabled: "+value.toString());
                        if (value) {
                            print("\n\ndespues del delay");
                            setState(() {
                              connection.scanDevices().then((List<BluetoothDevice> value) {
                                _devicesList = value;
                              });
                              _isSideMenuOpen = true;
                            });
                            print(_isSideMenuOpen);
                          
                        }else{
                          // TODO: mostrar un pop-up
                          _devicesList = [];
                          print("No se habilitó el dispositivo");
                        }
                      });
                    }); // Pregunta si desea habilitar el módulo bluetooth
                    print("Dispositivos: ...");
                    print(_devicesList);
                    */
                  },
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
              child: Image.asset(AppAssets.imgWALL_E),
            ),
          ),
          Positioned(
            bottom: 6,
            right: 10,
            width: height>width
                  ? width/fractionWidth
                  : width/fractionWidth * (height/width),
            child: Image.asset(AppAssets.imgPHYCOM),
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
          if (this._isSideMenuOpen)
          Stack(
            children: /*!this._isSideMenuOpen
            ? []
            : */[
              if (this._isSideMenuOpen)
                GestureDetector(
                  onTap: () {
                    setState(() { this._isSideMenuOpen = false; });
                  },
                  child: Container(width: width, height: height, color: Colors.transparent),
                ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn,
                left: this._isSideMenuOpen ? 0: -296,
                child: SideMenuBluetooth(
                  connection: connection,
                  devices: _isSideMenuOpen ? connection.bondedDevices()
                                           : Stream.empty(),
                  height: height,
                  width: 296,
                  //backgroundColor: Color(0xFF1C1B1F),
                  backgroundColor: Color(0xFF161618),
                  onConnectAction: () {
                    goToControlNav();
                  },
                  onCloseAction: () {
                    setState(() { this._isSideMenuOpen = false; });
                    print(this._isSideMenuOpen);
                  }
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }

}