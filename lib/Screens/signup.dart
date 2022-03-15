import 'package:first_project/Screens/job_listing.dart';
import 'package:first_project/Screens/signin.dart';
import 'package:first_project/app_button.dart';
import 'package:first_project/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF191720),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Let's sign you up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text("Welcome\nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 47),
            const AppTextField(placeholder: 'Enter your full name'),
            const AppTextField(placeholder: 'Enter your email address'),
            const AppTextField(placeholder: 'Enter your password'),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Already have an account ? ',
                style: TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            const SizedBox(height: 11),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => JobListing()));
                },
                child: const AppButton(label: 'Sign Up'))
          ]),
        ));
  }


}
