import 'package:flutter/material.dart';
import 'package:my_first_project/widgets/customAppbar.dart';
import '../widgets/add_job_button.dart';
import '../widgets/jobCard.dart';
import '../search_feild.dart';

class AddNewJob extends StatelessWidget {
  var mytext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(left: 27,top: 40,right: 27),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyappBar(usersession: "Usama Khan"),
            SearchFeild(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:  [
                    JobCard(),
                    JobCard(),
                    JobCard(),
                    JobCard(),
                    JobCard(),
                    JobCard(),
                    JobCard(),
                    JobCard(),
                  ],
                ),
              ),
            ),

          ],


        ),

      ),
      floatingActionButton: AddJobButton() ,
    );
  }
}
