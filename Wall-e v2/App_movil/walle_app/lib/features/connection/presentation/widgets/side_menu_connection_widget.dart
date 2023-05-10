import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:walle_app/core/ui-system/colors.dart';

import 'device_item_widget.dart';

class SideMenuBluetooth extends StatefulWidget {
  
  double height;
  double width;
  Color backgroundColor;
  VoidCallback onCloseAction;
  VoidCallback onConnectAction;

  SideMenuBluetooth({
    super.key, 
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
                    child: ListView.separated(
                      clipBehavior: Clip.hardEdge,
                      scrollDirection: Axis.vertical,
                      dragStartBehavior: DragStartBehavior.start,
                      itemCount: 25+1,
                      itemBuilder: (_, index) {
                        return index == 25
                              ? SizedBox(height: 40, width: 40,) // Último elemento, permite que el último item esté arriba del gradiente
                              : CustomListItem(
                                  title: 'Title',
                                  subtitle: 'Adress', 
                                  iconData: Icons.bluetooth_searching, 
                                  iconColor: Colors.white, 
                                  defaultColor: this.widget.backgroundColor,
                                  isActive: this.currentSelected == index,
                                  onTapItem: () {
                                    setState(() {
                                      this.currentSelected = index;
                                    });
                                  },
                                  onTapConnect: () {
                                    closeSideMenu(context);
                                    widget.onConnectAction();
                                    // TODO: Connection Code
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      this.currentSelected = -1;
                                    });
                                  },
                                );
                      }, 
                      separatorBuilder: (context, index2) => Divider(height: 2,), 
                    ),
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