import 'package:flutter/material.dart';
import 'package:my_first_project/screens/add_job.dart';

class AddJobButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => AddJob()));
    }
    ,child: const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: Icon(Icons.add),
    ),);
  }
}
