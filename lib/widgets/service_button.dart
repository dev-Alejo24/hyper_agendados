import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String title;

  const ServiceButton({Key? key, required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed : () {},
      child : Text(title, textAlign : TextAlign.center,),
      style : ElevatedButton.styleFrom(foregroundColor: Colors.black87, backgroundColor: Colors.white,)
    );
  }
}