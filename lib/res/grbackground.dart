import 'package:flutter/material.dart';

Widget GrBackground(Color startColor, Color endColor){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [startColor, endColor],
      begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3,0.0]
      )
    ),
  );
}