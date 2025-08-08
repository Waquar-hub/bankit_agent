import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';

class AppFlushBar{
  static flushBar(String message,BuildContext context,Color color){
    showFlushbar(context: context, flushbar: Flushbar(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      flushbarPosition: FlushbarPosition.TOP,
      forwardAnimationCurve: Curves.decelerate,
      duration: const Duration(seconds: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      message: message,
      backgroundColor: color,
      reverseAnimationCurve: Curves.easeInExpo,
      positionOffset: 40,
      icon: const Icon(Icons.error,size: 28,color: Colors.white,),
      borderRadius: BorderRadius.circular(20),
    )..show(context));
  }
}