import 'package:flutter/material.dart';

class SearchFeild  extends StatelessWidget {
    final String mytext='';
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(top:20,bottom: 20),
      padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
      decoration:  BoxDecoration(
      color: const Color(0xFF201E27),
      border: Border.all( color: const Color(0xFF5D5D67),width: 2),
      borderRadius: BorderRadius.circular(15)

      ),
      child: TextField(
      controller: TextEditingController(text: mytext),
      style: const TextStyle(color: Colors.white,fontSize: 15),
      decoration:  const InputDecoration(icon:Icon(Icons.search,color: Color(0xFF8F8F9E),),hintText:"Search here",
      hintStyle: TextStyle(color: Color(0xFF8F8F9E),fontSize: 15),
      border: InputBorder.none
      ),
      ),
    );
  }
}
