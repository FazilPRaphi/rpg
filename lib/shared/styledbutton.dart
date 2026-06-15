import 'package:flutter/material.dart';
import 'package:rpg/theme.dart';

class styledbutton extends StatelessWidget {
   styledbutton({super.key, required this.onPressed, 
  
  required this.child});


   final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Container(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[AppColors.primaryColor,AppColors.primaryAccent] ,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
       borderRadius:  BorderRadius.circular(10),
      ),
      child: child));
  }
}