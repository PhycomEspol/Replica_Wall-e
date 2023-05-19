import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:walle_app/core/config.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:walle_app/core/ui-system/colors.dart';

//import 'package:walle_app/features/connection/data/models/device.dart';
import 'package:walle_app/features/connection/domain/connection.dart';
//import 'package:walle_app/features/connection/domain/entities/connection.dart';
//import 'package:walle_app/features/connection/domain/use_cases/select_device_use_case.dart';
import 'device_item_widget.dart';

import 'package:walle_app/main.dart';


class SideMenuBluetooth extends StatefulWidget {
  
  double height;
  double width;
  Color backgroundColor;
  VoidCallback onCloseAction;
  VoidCallback onConnectAction;

  Connection connection;
  Stream<List<BluetoothDevice>> devices;

  SideMenuBluetooth({
    super.key, 
    required this.connection,
    required this.devices,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.onCloseAction,
    required this.onConnectAction,
  });

  @override
  State<SideMenuBluetooth> createState() => _SideMenuBluetoothState();
}

class _SideMenuBluetoothState extends State<SideMenuBluetooth> {
  double topMargin = 0;
  int currentSelected = -1; // -1 cuando ninguno está seleccionado

  /*  
  // ---------------------------- Route Observer ----------------------------
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this as RouteAware, ModalRoute.of(context) as PageRoute<dynamic>);
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
  */
  @override
  Future<void> dispose() async {
    super.dispose();
    print("Dispose side_menu");
  }

  void closeSideMenu(BuildContext context){
    //Navigator.of(context).pop();
    this.widget.onCloseAction();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      //margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.only(top: 24),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: this.widget.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16), 
          bottomRight: Radius.circular(16), 
        ),
      ),
      child: Stack(
        children:[
          Container(
            width: widget.width,
            height: 800,
            color: this.widget.backgroundColor,
            //padding: const EdgeInsets.only(bottom: 223, ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 28, top: 16, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          width: double.infinity,
                          height: 40,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: topMargin),
                          child: Text(
                            "Dispositivos",
                            style: TextStyle(
                              color: Color(0xffcac4d0),
                              fontSize: 20,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 14),
                Expanded(
                  child: Container(
                    //width: double.infinity,
                    //height: double.infinity,
                    //color: Colors.amber,
                    padding: const EdgeInsets.only(left: 2, right: 4, bottom: 0, ),
                    child: StreamBuilder(
                      stream: widget.devices,
                      builder: (context, AsyncSnapshot<List<BluetoothDevice>> snapshot) {
                        final data = snapshot.data;
                        print("data en sidemenu: "+data.toString());
                        if(data == null){
                          return CircularProgressIndicator();
                        }

                        if (snapshot.hasData){
                          return ListView.separated(
                            clipBehavior: Clip.hardEdge,
                            scrollDirection: Axis.vertical,
                            dragStartBehavior: DragStartBehavior.start,
                            itemCount: data.length+1,
                            itemBuilder: (_, index) {
                              print(data.length.toString() + " - " + index.toString());
                              return data.length == index
                                    ? SizedBox(height: 40, width: 40,) // Último elemento, permite que el último item esté arriba del gradiente
                                    : CustomListItem(
                                        title: data[index].name.isEmpty ? 'Unknown'
                                                                        : data[index].name,
                                        subtitle: data[index].id.id, 
                                        iconData: Icons.bluetooth_searching, 
                                        iconColor: Colors.white, 
                                        defaultColor: this.widget.backgroundColor,
                                        isActive: this.currentSelected == index,
                                        onTapItem: () {
                                          setState(() {
                                            if (this.currentSelected == index){
                                              this.currentSelected = -1;
                                            }else{
                                              this.currentSelected = index;
                                            }
                                          });
                                        },
                                        onTapConnect: () async {
                                          bool connected = await connection.connect(data[index], () { 
                                            // TODO: Disconnection inesperada
                                            print("Se desconectó inesperadamente");
                                          });
                                          if (connected) {
                                            closeSideMenu(context);
                                            widget.onConnectAction();
                                          }
                                        },
                                        onTapCancel: () {
                                          setState(() {
                                            this.currentSelected = -1;
                                          });
                                        },
                                      );
                            }, 
                            separatorBuilder: (context, index2) => Divider(height: 2,), 
                          );
                        }else{
                          return Text("No dispositivos cercanos");
                        }
                      },
                    )
                  ),
                ),
              ]
            ),
          ),
          // Elementos flotantes
          Positioned.fill( // Gradiente para "desvanecer" los items
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: widget.width,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ Colors.transparent, this.widget.backgroundColor, this.widget.backgroundColor, ],
                    stops: const [ 0.0, 0.8, 1.0 ],
                  )
                ),
              ),
            ),
          ),
          Positioned(  // Close Button
            left: 296-18*2-16,
            top: 16 + topMargin,
            child: Material(
              type: MaterialType.transparency,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: red,
                child: IconButton(
                  onPressed: () => closeSideMenu(context),
                  padding: const EdgeInsets.all(0),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: const Icon(  // TODO: Animate Icon when click
                    Icons.close_rounded, 
                    color: Colors.white,
                    //weight: 4,
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}