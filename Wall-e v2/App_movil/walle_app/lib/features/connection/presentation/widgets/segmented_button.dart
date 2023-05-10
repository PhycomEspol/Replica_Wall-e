import 'package:flutter/material.dart';

class MySegmentedButton extends StatefulWidget {
  
  Color firstSegmentColor;
  IconData firstSegmentIcon;
  Color secondSegmentColor;
  IconData secondSegmentIcon;
  Color iconColor;

  Color borderColor;
  double borderWidth;

  double marginValue;
  double width;
  double height;

  VoidCallback onTapFirst;
  VoidCallback onTapSecond;

  MySegmentedButton({
    super.key,
    required this.firstSegmentColor,
    required this.firstSegmentIcon,
    required this.secondSegmentColor,
    required this.secondSegmentIcon,
    required this.iconColor,
    required this.borderColor,
    required this.onTapFirst,
    required this.onTapSecond,
    this.borderWidth = 1,
    this.marginValue = 4,
    this.width = 72,
    this.height = 36,
  });

  @override
  _MySegmentedButtonState createState() => _MySegmentedButtonState();
}

enum SegmentState { connect, cancel }

class _MySegmentedButtonState extends State<MySegmentedButton> {
  SegmentState segmentState = SegmentState.connect;
  Duration timeTransition = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(top: widget.marginValue, bottom: widget.marginValue),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(100.0))
      ),
      width: widget.width,
      height: widget.height - widget.marginValue*2,
      child: Stack(
        children: [
          AnimatedPositioned(
            left: segmentState == SegmentState.connect
                  ? widget.borderWidth
                  : widget.width/2 + widget.borderWidth*2,
            duration: timeTransition,
            child: AnimatedContainer(
              duration: timeTransition,
              height: 100,
              width: widget.width/2,
              alignment: Alignment.centerLeft,
              decoration:BoxDecoration(
                color: segmentState == SegmentState.connect 
                      ? widget.firstSegmentColor
                      : widget.secondSegmentColor,
              ),
            ), 
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Expanded(
                child: Container(
                  height: widget.height - widget.marginValue*2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Expanded(
                        child: ElevatedButton( // Button to Connect
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () => widget.onTapFirst()
                            );
                            if (segmentState != SegmentState.connect) {
                              setState(() {
                                segmentState = SegmentState.connect;
                              });
                            }
                          },
                          child: Icon(
                            Icons.login_rounded, 
                            color: widget.iconColor,
                            size: 18.0,
                          ),
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: widget.borderWidth, 
                                color: widget.borderColor, 
                                strokeAlign: -1,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100), 
                                topRight: Radius.circular(0), 
                                bottomLeft: Radius.circular(100), 
                                bottomRight: Radius.circular(0), 
                              ),
                            ),
                            padding: EdgeInsets.all(0.0),
                            //backgroundColor: Color(0xff00ccff).withOpacity(0.7), // <-- Button color
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.transparent, // <-- Splash color when click
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () => widget.onTapSecond()
                            );
                            if (segmentState != SegmentState.cancel) {
                              setState(() {
                                segmentState = SegmentState.cancel;
                              });
                            }
                          },
                          child: Icon(
                            Icons.close_rounded, 
                            color: widget.iconColor,
                            size: 18.0,
                          ),
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: widget.borderWidth, 
                                color: widget.borderColor,
                                strokeAlign: -1,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0), 
                                topRight: Radius.circular(100), 
                                bottomLeft: Radius.circular(0), 
                                bottomRight: Radius.circular(100), 
                              ),
                            ),
                            padding: EdgeInsets.all(0.0),
                            //backgroundColor: Color(0xff00ccff).withOpacity(0.7), // <-- Button color
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.transparent, // <-- Splash color when click
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }

}