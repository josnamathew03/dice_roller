

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  StyledText(this.text,{super.key});
  String text;
  @override

  Widget build(context){
    return const Text("Hello World",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }

}