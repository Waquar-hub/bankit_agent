import 'package:flutter/material.dart';

class Counter extends StatelessWidget{
  Counter();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context,index){
        return Text("");
      }),
    );
  }

}