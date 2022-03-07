import 'package:first_project/Screens/job_listing.dart';
import 'package:first_project/app_button.dart';
import 'package:flutter/material.dart';

class AddNewJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff191720),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 95, left: 25),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => JobListing()));
                      },
                      child: Image.asset(
                        'images/back.png',
                        width: 13,
                        height: 24,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 31, top: 89),
                  child: Text('Add New Job',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 31, left: 27, right: 27),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color(0xff1E1C24),
                  border: Border.all(color: const Color(0xff5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: const TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    hintText: 'Enter position name',
                    hintStyle:
                        TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                    border: InputBorder.none),
              ),
            ),
            Container(
              height: 374,
              margin: const EdgeInsets.only(top: 25, left: 27, right: 27),
              padding: const EdgeInsets.only(top: 15, left: 15, bottom: 318),
              decoration: BoxDecoration(
                  color: const Color(0xff1E1C24),
                  border: Border.all(color: const Color(0xff5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: const TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    hintText: 'Describe Requirement...',
                    hintStyle:
                        TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                    border: InputBorder.none),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(
                  bottom: 50, right: 27, left: 27, top: 70),
              child: AppButton(label: 'Submit Job'),
            )
          ],
        ));
  }

}
