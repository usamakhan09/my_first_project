import 'package:flutter/material.dart';
import 'package:my_first_project/widgets/app_button.dart';
import 'package:my_first_project/largeTextField.dart';
import 'package:my_first_project/screens/listOf_job.dart';
import 'package:my_first_project/screens/signIn.dart';
import '../widgets/app_text_field.dart';

class AddJob extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      resizeToAvoidBottomInset: false,
       backgroundColor: const Color(0xFF191720),
           body: Padding(padding: const EdgeInsets.only(
              top: 50, left: 21, right: 27),
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
                                MaterialPageRoute(builder: (_) => SignIn()));
                          },
                    child:
                    const
                    //Text("<",style: TextStyle(color: Colors.white,fontSize: 35)),
                    Icon(Icons.arrow_back_ios, size: 22,color: Colors.white,),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 31)),
                  const Text("Add New Job",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:25)),
  ]
              ),

              const AppTextfeild(placeholder: "Enter your position name",text:''),
               const JumboTurnTextField(jumboturn1: "Describe Requirement...",text:''),
              Container(
                 margin: EdgeInsets.only(top:50),
                child: Row(
                  children: [
                    Expanded(
                      child: Appbutton(label: 'Submit Job',onPress: (){
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
