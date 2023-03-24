import 'package:flutter/material.dart';
import 'package:walle_app/core/config.dart';
import 'dart:math';

import 'package:walle_app/core/ui-system/colors.dart';
import 'package:walle_app/features/wall-e/mobility/domain/walle_mobility.dart';


late double radialSize;
const count = 200;  // Se generan 100 partículas
final rng = Random();
double randomRange(double min, double max) => rng.nextDouble() * (max - min) + min;
Offset polarToCartesian(double r, double theta){
  final dx = r*cos(theta);
  final dy = r*sin(theta);

  return Offset(dx, dy);
}

class ParticlesDrawer {
  final double radialSize;
  final List<Particle> particles;

  ParticlesDrawer(
    this.radialSize, 
    this.particles,
  );
  
  void drawParticles(Canvas canvas, Offset c){
    //if(Mobility.isStickPressed){
      this.particles.forEach((p) {
        final cc = polarToCartesian(p.orbit, p.theta);
        final paint = Paint()..color = p.color.withOpacity(p.opacity);

        canvas.drawCircle(
          cc+c,
          p.radius,
          paint
        );
      });
    //}
  }
  
}

class Particle {
  double orbit;
  late double originalOrbit;
  late double theta;
  double thetaRange = 80;
  late double opacity;
  late double originalRadius;
  double radius = 1.5;
  Color color = Colors.red;

  Particle(this.orbit) {
    this.originalRadius = this.radius;
    this.originalOrbit = this.orbit;
    this.theta = randomRange(0.0, 360.0)*pi/180.0;
    this.opacity = randomRange(0.85, 1.0);
    //this.opacity = 1;
    this.color = Colors.white;

  }

  late double _thetaCorrected;
  late double _maxAngle;
  late double _minAngle;

  void Update(){ // TODO: modificar considerando el ángulo en el que se envuentra el joystick
    this.color = Mobility.isStickPressed
      ? Colors.white
      : light_gray_1;
    
    this.orbit += Mobility.isStickPressed 
      ? 0.3 
      : 0.1;
    this.opacity -= Mobility.isStickPressed
      ? 0.005
      : 0.005; // Entre menor es, más radio alcanza

    if(Mobility.isStickPressed){
      // Definir límites del rango de ángulos donde los puntos serán visibles
      _thetaCorrected = -(this.theta*(180/pi) - 360);

      _maxAngle = wall_e.mobility.theta+this.thetaRange/2; // theta extraido desde el domain
      _minAngle = wall_e.mobility.theta-this.thetaRange/2;

      if(_maxAngle>360){_maxAngle-=360;}
      else if(_maxAngle==360){_maxAngle=360;}
      else if(_maxAngle<0){_maxAngle+=360;}
      
      if(_minAngle>360){_minAngle-=360;}
      else if(_minAngle==360){_minAngle=0;}
      else if(_minAngle<0){_minAngle+=360;}

      // Modificar Visibilidad de los puntos
      if(_minAngle>_maxAngle){
        this.opacity = (_thetaCorrected>_maxAngle && _thetaCorrected<_minAngle)
          ? 0
          : this.opacity;
        this.radius = (_thetaCorrected>_maxAngle && _thetaCorrected<_minAngle)
          ? 0
          : this.originalRadius;
      }

      if(_minAngle<_maxAngle){
        this.opacity = !(_maxAngle>_thetaCorrected && _minAngle<_thetaCorrected)
          ? 0
          : this.opacity;
        this.radius = !(_maxAngle>_thetaCorrected && _minAngle<_thetaCorrected)
          ? 0
          : this.originalRadius;
      }
    }else{
      this.radius = this.originalRadius;
    }
    
    // Opacidad por alejarse
    if(this.opacity <= 0.0){
      this.orbit = this.originalOrbit;
      this.opacity = Mobility.isStickPressed
        ? randomRange(0.1, 1.0)
        : randomRange(0.85, 1.0); // Da efecto de latido
    }
  }

}

