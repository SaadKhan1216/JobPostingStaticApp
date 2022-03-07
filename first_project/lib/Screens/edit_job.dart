import 'package:first_project/Screens/job_listing.dart';
import 'package:first_project/app_button.dart';
import 'package:flutter/material.dart';

class EditJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff191720),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 95, left: 27),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => JobListing()));
                    },
                    child: Image.asset('images/back.png')),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 95, left: 31),
                child: Text(
                  'Edit Job',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 31, left: 27, right: 27),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xff1E1C24),
              border: Border.all(color: const Color(0xff5D5D67), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white, fontSize: 15),
              decoration: InputDecoration(
                  hintText: 'Flutter Developer',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 27, right: 27),
            padding: const EdgeInsets.only(top: 15, left: 20, bottom: 195),
            decoration: BoxDecoration(
                color: const Color(0xff1E1C24),
                border: Border.all(color: const Color(0xff5D5D67), width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 50, right: 27, left: 27, top: 87),
            child: AppButton(label: 'Submit Job'),
          )
        ],
      ),
    );
  }
}
