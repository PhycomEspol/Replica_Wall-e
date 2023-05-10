import 'package:flutter/material.dart';
import 'package:walle_app/core/ui-system/colors.dart';
import 'package:walle_app/features/connection/presentation/widgets/segmented_button.dart';

class CustomListItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final Color iconColor;
  final Color defaultColor;

  final VoidCallback onTapConnect;
  VoidCallback onTapCancel;
  VoidCallback onTapItem;
  bool isActive;

  CustomListItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.iconColor,
    required this.defaultColor,
    required this.onTapConnect,
    required this.onTapCancel,
    required this.onTapItem,
    required this.isActive,
  }) : super(key: key);

  @override
  _CustomListItemState createState() => _CustomListItemState();
}

enum SegmentState { connect, cancel }

class _CustomListItemState extends State<CustomListItem> {
  Duration transitionTime = Duration(milliseconds: 400);
  //bool _isActive = false;
  SegmentState segmentState = SegmentState.cancel;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: transitionTime,
      curve: Curves.easeIn,
      width: 296,
      height: widget.isActive ? 56: 40,
      decoration: BoxDecoration(
        color: this.widget.isActive ? Color(0xFF4A4458) : widget.defaultColor,
        borderRadius: this.widget.isActive ? BorderRadius.all(Radius.circular(56.0/2)) : null,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            if (!widget.isActive) {
              widget.onTapItem();
              //_isActive = !_isActive;
            }
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          //color: Color(0xff1c1b1f),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24, ),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    widget.iconData,
                    color: widget.iconColor,
                    size: 24,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Color(0xffe6e1e5),
                          fontSize: 16,
                          letterSpacing: 0.50,
                        )
                      ),
                      AnimatedContainer(
                        duration: transitionTime,
                        curve: Curves.easeIn,
                        height: widget.isActive ? 14: 0,
                        child: Text(
                          widget.subtitle,
                          style: TextStyle(
                            color: Color(0xffcac4d0),
                            fontSize: 14,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                AnimatedCrossFade(
                  crossFadeState: widget.isActive 
                                  ? CrossFadeState.showSecond
                                  : CrossFadeState.showFirst,
                  duration: transitionTime,
                  firstCurve: Curves.slowMiddle,
                  secondCurve: Curves.easeInQuad,
                  firstChild: SizedBox( // Ambos widgets deben ser del mismo size
                    width: 72,
                    height: 36,
                  ), 
                  secondChild: new MySegmentedButton(
                    firstSegmentColor: sky_blue.withOpacity(0.7), 
                    firstSegmentIcon: Icons.login_rounded, 
                    iconColor: Colors.white, 
                    secondSegmentColor: red.withOpacity(0.8), 
                    secondSegmentIcon: Icons.close_rounded,
                    borderColor: Color(0xFF00CCFF), 
                    onTapFirst: () {
                      setState(() {
                        if(widget.isActive) {
                          // TODO: Cerrar el SideMenu
                          // TODO: Conectar
                          widget.onTapConnect();
                        }
                      });
                      
                    },
                    onTapSecond: () {
                      setState(() {
                        widget.onTapCancel();
                        //_isActive = !_isActive;  // pasa a estado por Default, _isActive=false
                      });
                    },
                  ),
                ),
              ],
            ),




          ),
        ),
      )
    );
  }
}
      