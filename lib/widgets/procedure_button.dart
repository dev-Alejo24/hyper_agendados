import 'package:flutter/material.dart';

class ProcedureButton extends StatelessWidget {
  final String text;

  const ProcedureButton({Key? key, required this.text}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : const EdgeInsets.only(bottom : 8.0,),
      child : ElevatedButton(onPressed : () {}, child : Text(text,), style : ElevatedButton.styleFrom(foregroundColor: Colors.black87, backgroundColor: Colors.lightBlue.shade100,))
    );
  }
}