import 'package:flutter/material.dart';
import 'package:my_first_project/largeTextField.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import 'listOf_job.dart';

class EditJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(padding: const EdgeInsets.only(
          top: 70, left: 21, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (_) => AddNewJob()));
                    },
                    child:   const Icon(Icons.arrow_back_ios, size: 22,color: Colors.white,),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 31)),
                  const Text("Edit Job",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25)),
                ]
            ),

            const AppTextfeild(placeholder: "Enter your position name",text: 'Flutter Developer',),
            const JumboTurnTextField(jumboturn1: "Describe Requirement...",text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.'),
            Container(
              margin: const EdgeInsets.only(top:50),
              child: Row(
                children: [
                  Expanded(
                    child: Appbutton(label: 'Update Job',onPress: (){
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (_) => AddNewJob()));
                    },),
                  ),
                ],
              ),

            ),
          ],

        ),
      ),

    );
  }
}
