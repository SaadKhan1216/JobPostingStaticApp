import 'package:first_project/Screens/edit_job.dart';
import 'package:flutter/material.dart';

class ContJobList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 360,
      margin: const EdgeInsets.only(right: 27, top: 11),
      decoration: BoxDecoration(
        color: const Color(0xff201E27),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Flutter Developer Required',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Karachi,Pakistan',
                  style: TextStyle(color: Color(0xff8F8F9E), fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => EditJob()));
                },
                child: Image.asset(
                  'images/editjob.png',
                  height: 18,
                  width: 18,
                )),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                'images/trash.png',
                height: 24,
                width: 24,
              ))
        ],
      ),
    );
  }
}
