import 'package:first_project/Screens/add_newJob.dart';
import 'package:first_project/Screens/edit_job.dart';
import 'package:first_project/model/job_post.dart';
import 'package:flutter/material.dart';

class JobListing extends StatefulWidget {
  @override
  State<JobListing> createState() => _JobListingState();
}

class _JobListingState extends State<JobListing> {
  List<JobPost> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 27, bottom: 37),
        child: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Color(0xff191720),
            size: 30,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push<JobPost>(MaterialPageRoute(builder: (_) => AddNewJob()))
                .then((value) => setState(() {
                      items.add(value!);
                    }));
          },
        ),
      ),
      backgroundColor: const Color(0xff191720),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 79, left: 27),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1, left: 28),
                    child: Text(
                      'Saad Khan',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 98, right: 29.34),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'images/backList.png',
                  height: 25.48,
                  width: 24.66,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 56,
          margin: const EdgeInsets.only(top: 19, right: 27, left: 27),
          padding: const EdgeInsets.only(top: 7, bottom: 8, left: 15),
          decoration: BoxDecoration(
              color: const Color(0xff1E1C24),
              border: Border.all(color: const Color(0xff5D5D67), width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            style: TextStyle(color: Colors.white, fontSize: 15),
            decoration: InputDecoration(
                icon: Padding(
                  padding: EdgeInsets.only(top: 11, bottom: 11.25),
                  child: Icon(
                    Icons.search,
                    color: Color(0xff5D5D67),
                  ),
                ),
                hintText: 'Search keywords..',
                hintStyle: TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          child: Expanded(
              child: items.isNotEmpty
                  ? ListView.builder(
                      itemCount: items.length, itemBuilder: JobCont)
                  : const Center(
                      child: Text(
                        'No Items Available..',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
        )
      ]),
    );
  }

  Widget JobCont(BuildContext context, int index){
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 102,
              width: 360,
              margin: const EdgeInsets.only(top: 11, left: 27, right: 27),
              decoration: BoxDecoration(
                color: const Color(0xff201E27),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 25),
                          child: Text(
                            items[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 18,
                          ),
                          child: Text(
                            items[index].descp,
                            style: const TextStyle(
                                color: Color(0xff8F8F9E), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.77),
                    child: GestureDetector(
                        onTap: () {
                          onEdit(context, index,
                              JobPost(items[index].title, items[index].descp));
                        },
                        child: Image.asset('images/editjob.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.25),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                        child: Image.asset('images/trash.png')),
                  )
                ],
              ),
            ),
          ),
        ],
      );
  }
  void onEdit(BuildContext context, int index, JobPost editJob) =>
      Navigator.of(context)
          .push<JobPost>(
              MaterialPageRoute(builder: (_) => EditJob(jobPost: editJob)))
          .then((value) => setState(() {
                items[index].title = value!.title;
                items[index].descp = value.descp;
              }));

}
