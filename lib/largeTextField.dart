import 'dart:math';

import 'package:flutter/material.dart';

class JumboTurnTextField extends StatelessWidget {
  final String jumboturn1;
  final String text;
   const JumboTurnTextField({required this.jumboturn1,required this.text});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top:20),
      padding: const EdgeInsets.only(left: 20,top: 15),

      decoration:  BoxDecoration(
          color: const Color(0xFF201E27),
          border: Border.all( color: Colors.grey,width: 1),
          borderRadius: BorderRadius.circular(15)

      ),
     child:

      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: TextField(
           controller: TextEditingController(text: text),
         keyboardType: TextInputType.multiline,
         maxLines: 20,
    style: const TextStyle(color: Colors.white,fontSize: 15),
    decoration: InputDecoration(hintText:jumboturn1,
    hintStyle: const TextStyle(color: Color(0xFF8F8F9E),fontSize: 15),
    border: InputBorder.none

     ),

        ),
      ),
    );
  }
}
