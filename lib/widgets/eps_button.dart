import 'package:flutter/material.dart';

class EpsButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const EpsButton({Key? key, required this.onPressed, required this.child}) 
      : super(key:key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child : child,
      style : ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white, padding :const EdgeInsets.symmetric(vertical :16.0,horizontal :32.0,), shape : RoundedRectangleBorder(borderRadius : BorderRadius.circular(8.0), side :const BorderSide(color :Colors.grey),),)
    );
  }
}