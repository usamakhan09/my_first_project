
import 'package:flutter/material.dart';
import 'package:my_first_project/screens/singup.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Signup(),
      debugShowCheckedModeBanner: false,
    );

  }
}

