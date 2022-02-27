import 'package:flutter/material.dart';
import 'package:my_first_project/screens/signIn.dart';

class MyappBar extends StatelessWidget {
  final String usersession;
  const MyappBar({required this.usersession}) ;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children:  [const Text("Welcome",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18) ,),
            Text(this.usersession,style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),)
          ],
        ),
        Expanded(
            child:
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignIn()));
              },
              child:
              Container(
                  margin: const EdgeInsets.only(left: 150),
                  child: const Icon(Icons.logout_rounded,color: Colors.white,)),
            )
        )
      ],
    );
  }
}
