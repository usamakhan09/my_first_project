import 'package:flutter/material.dart';
import 'package:my_first_project/screens/listOf_job.dart';
import 'package:my_first_project/screens/singup.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 70, left: 27, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let’s sign you in",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 35)),
            const SizedBox(height: 14)
            ,
            const Text("Welcome back\nyou’ve been missed !",
                style: TextStyle(color: Colors.white, fontSize: 30))
            ,
            const SizedBox(height: 27),
            const AppTextfeild(placeholder: "Enter your email address",text: ''),
            const AppTextfeild(placeholder: "Enter your Password",text:''),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Signup()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                  ),
                  Text(
                    ' Register ? ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Appbutton(label: "Sign In",
            onPress: (){
              Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => AddNewJob()));
              }
            ),
          ],

        ),
      ),
    );
  }
}
