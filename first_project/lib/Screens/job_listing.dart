import 'package:first_project/Screens/add_newJob.dart';
import 'package:first_project/Screens/signin.dart';
import 'package:first_project/container_jobList.dart';
import 'package:first_project/text_field.dart';
import 'package:flutter/material.dart';

class JobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 30),
        child: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Color(0xff191720),
            size: 30,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AddNewJob()));
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff191720),
      body: Padding(
          padding: const EdgeInsets.only(top: 79, left: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  const Text(
                    'Saad Khan',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => SignIn()));
                      },
                      child: Image.asset(
                        'images/backList.png',
                        height: 25,
                        width: 24,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 56,
                margin: const EdgeInsets.only(top: 31, right: 27),
                padding: const EdgeInsets.only(top: 7, bottom: 8, left: 15),
                decoration: BoxDecoration(
                    color: const Color(0xff1E1C24),
                    border:
                        Border.all(color: const Color(0xff5D5D67), width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Color(0xff5D5D67),
                      ),
                      hintText: 'Search keywords..',
                      hintStyle:
                          TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              ContJobList(),
              ContJobList(),
              ContJobList(),
              ContJobList(),
              ContJobList(),
            ],
          )),
    );
  }
}
