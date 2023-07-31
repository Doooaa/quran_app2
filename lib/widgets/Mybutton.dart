import 'package:flutter/material.dart';

class MYButton extends StatelessWidget {
   MYButton({
   required this.title,
   required this.Buttoncolor,
   required this.textcolor,
   required this.fun
  });
  final String title;
  final Color Buttoncolor;
  final Color textcolor;
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0, 
      color:Buttoncolor,
      borderRadius:BorderRadius.circular(16),
      child:MaterialButton(
        onPressed:fun,
      child:Text(title,style: 
       TextStyle(
       color: textcolor,
       fontSize: 16,
       fontWeight: FontWeight.w700,
       ),),
      ),
    );
  }
}