import 'package:flutter/material.dart';
import 'package:learning/pages/dice_doller.dart';
import 'package:learning/pages/styled_text.dart';

class GradientContainer extends StatelessWidget{
  @override
  const GradientContainer(this.color1,this.color2,{super.key});
  const GradientContainer.purple({super.key})
    : color1= Colors.deepOrange,
      color2=Colors.deepPurple;


final Color color1;
final Color color2;




Widget build(context)
  {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
            child:DiceRoller(),
        ),
      );
      //   child: Image.asset(assets/images/dice-1);
        // StyledText("Hello"),
      //);
  }
}