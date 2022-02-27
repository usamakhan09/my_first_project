import 'package:flutter/material.dart';
import 'package:my_first_project/screens/edit_Job.dart';

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:20),
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Flutter Developer Required",
                        style: TextStyle(
                            fontSize: 15, fontWeight:FontWeight.bold,color: Colors.white)),
                    Text("Karachi, Pakistan",
                        style:
                        TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)))
                  ]),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => EditJobs()));
                },
                child: const Icon(Icons.edit, size: 22,color: Colors.white,)),
            const SizedBox(width: 25),
            GestureDetector(
              onTap: (){
                const AlertDialog(title: Text("Sample Alert Dialog"));
              },
              child:const Icon(
                Icons.delete_outline,
                size: 24,
                color: Color(0xFFFF5959),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
