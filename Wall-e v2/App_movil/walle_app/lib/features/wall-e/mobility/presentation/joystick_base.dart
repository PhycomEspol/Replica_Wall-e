import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'animated_border.dart';
import 'package:walle_app/features/wall-e/mobility/domain/walle_mobility.dart';

late double radiusBase;

class CustomBase extends StatefulWidget{
  double dBase;
  double dStick;
  CustomBase({
    Key? key,
    required this.dBase, 
    required this.dStick,
  }) : super(key: key){
    radiusBase = (this.dBase - this.dStick)/2;
  }

  @override
  State<CustomBase> createState() => _CustomBaseBaseState();
}

late bool memoryPress = false;

class _CustomBaseBaseState extends State<CustomBase>{
  
  _CustomBaseBaseState();

  
  late Timer timer;
  final List<Particle> particles = List<Particle>.generate(
    200, 
    (index) => Particle(radiusBase),
    growable: true
  );

  @override
  initState() {
    super.initState();
    print("${particles.length}");
    // se actualiza a una frecuencia de 60Hz, frecuencia de visión humana
    this.timer = Timer.periodic(Duration(milliseconds: 1000 ~/ 60), (timer) {
      //if(Mobility.isStickPressed){
        setState(() {
          this.particles.forEach((p) {
            if(memoryPress==true && Mobility.isStickPressed==false){
              p.opacity = randomRange(0.85, 1.0);
            }
            p.Update();
          });
        });
      //}
      memoryPress = Mobility.isStickPressed;
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    this.timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: widget.dBase,
          height: widget.dBase,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: CustomPaint(
            painter: _CustomBasePainter(
              diameter: widget.dBase, 
              dStick: widget.dStick,
              colors: <Color>[
                Color(0xFF004D93),
                Color(0xFF006DD2),
                Color.fromARGB(216, 0, 178, 255),
                Color(0xFF455760),
              ],
              stops: <double>[0, 0.2, 0.95, 1],
              particles: this.particles,
              isAnimated: true,
            ),
          ),
        )
      ]
    );
  }

}

class _CustomBasePainter extends CustomPainter {

  late double _radius;
  double diameter;
  double dStick;
  List<Color> colors;
  List<double> stops;
  bool isAnimated = true;  // Por defecto tiene las animaciones de las partículas
  
  final List<Particle> particles;
  late ParticlesDrawer myAnimation;

  _CustomBasePainter({
    isAnimated,
    required this.diameter,
    required this.dStick,
    required this.colors,
    required this.stops,
    required this.particles,
  }){
    this._radius = (diameter -dStick)/2;
    if(isAnimated){
      myAnimation = ParticlesDrawer(
        _radius, 
        this.particles,
      );
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    final c = Offset(size.width/2, size.height/2);

    // TODO: marcas tipo cruz  sobre el círculo base
    
    Paint paint = Paint()
    ..shader = RadialGradient(
      colors: colors,
      stops: stops,
      tileMode: TileMode.clamp,
    ).createShader(Rect.fromCircle(
      center: Offset(size.width/2, size.height/2), 
      radius: _radius
    ));
    canvas.drawCircle(c, _radius, paint);  // Dibujo del círculo base

    double blurSigma = 24;
    Path oval = Path()
        ..addOval(Rect.fromCircle(center: c, radius: _radius));
    Paint shadowPaint = Paint() 
        ..color = Colors.black.withOpacity(0.4)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);
    canvas.drawPath(oval, shadowPaint);

    if(isAnimated){
      myAnimation.drawParticles(canvas, c);  // Dibujo de partículas
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}