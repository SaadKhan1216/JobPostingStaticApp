import 'package:first_project/Screens/job_listing.dart';
import 'package:first_project/app_button.dart';
import 'package:first_project/model/job_post.dart';
import 'package:flutter/material.dart';

class AddNewJob extends StatefulWidget {
  @override
  State<AddNewJob> createState() => _AddNewJobState();
}

class _AddNewJobState extends State<AddNewJob> {
  TextEditingController titleFieldController = TextEditingController();
  TextEditingController descpFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff191720),
        body: Form(
          child: Builder(builder: (childContext) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 95, left: 25),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
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
                      border:
                          Border.all(color: const Color(0xff5D5D67), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    validator: (currentValue) {
                      if (currentValue == '') {
                        return 'Please enter a valid position';
                      }
                    },
                    controller: titleFieldController,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    decoration: const InputDecoration(
                      hintText: 'Enter position name',
                      hintStyle:
                          TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 374,
                  margin: const EdgeInsets.only(top: 25, left: 27, right: 27),
                  padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 195),
                  decoration: BoxDecoration(
                      color: const Color(0xff1E1C24),
                      border:
                          Border.all(color: const Color(0xff5D5D67), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    validator: (currentValue) {
                      if (currentValue == '') {
                        return 'Please enter a valid description';
                      }
                    },
                    controller: descpFieldController,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    decoration: const InputDecoration(
                        hintText: 'Describe Requirement...',
                        hintStyle:
                            TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                        border: InputBorder.none),
                  ),
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.only(
                        bottom: 70, right: 27, left: 27),
                    child: GestureDetector(
                        onTap: () {
                          if (Form.of(childContext)?.validate() ?? false) {
                            onSave(context);
                          }
                        },
                        child: AppButton(label: 'Submit Job')))
              ],
            );
          }),
        ));
  }

  void onSave(BuildContext context) {
    Navigator.pop(
        context, JobPost(titleFieldController.text, descpFieldController.text));
  }
}
