import 'package:flutter/material.dart';

class  Appbutton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;
  const Appbutton({required this.label,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top :10),
              padding: const EdgeInsets.all(15),
              decoration:  BoxDecoration(
                color: Colors.white,
                border: Border.all( color: const Color(0xFF1E1C24),width: 1),
                borderRadius: BorderRadius.circular(15)),
              child: GestureDetector(
                onTap: onPress,
                child: Text(label,style: const TextStyle(color: Color(0xFF191720),fontSize: 15,fontWeight: FontWeight.bold)),
              ),
            ),
        ),
      ],
    );
  }
}
