import 'package:flutter/material.dart';

class AppTextfeild extends StatelessWidget {

  final String placeholder;
  final String text;

  const AppTextfeild({ required this.placeholder,required this.text}) ;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top:20),
      padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
      decoration:  BoxDecoration(
          color: const Color(0xFF201E27),
          border: Border.all( color: Color(0xFF5D5D67),width: 1),
          borderRadius: BorderRadius.circular(15)

      ),
      child: TextField(
        controller: TextEditingController(text: text),
        style: const TextStyle(color: Colors.white,fontSize: 15),
        decoration: InputDecoration(hintText:placeholder,
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E),fontSize: 15),
            border: InputBorder.none
        ),

      ),

    );
  }
}
