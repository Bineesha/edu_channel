import 'package:edu_channel/pages/railwaypage/appbar.dart';
import 'package:edu_channel/pages/railwaypage/widgets/course_section.dart';
import 'package:edu_channel/pages/railwaypage/widgets/educator_section.dart';
import 'package:edu_channel/pages/railwaypage/widgets/examcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RailwayExamsPage extends StatefulWidget {
  @override
  State<RailwayExamsPage> createState() => _RailwayExamsPageState();
}

class _RailwayExamsPageState extends State<RailwayExamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: CustomAppBar(),
      body: Column(children: [
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cards Section
                Divider(color: Colors.grey.shade800),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(
                              color: Colors.grey.shade800,
                              thickness: 1,
                              indent: 9,
                              endIndent: 9,
                            ),
                            Divider(
                              color: Colors.grey.shade800,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            ExamCard(
                              title: "Abhyaas - Railways Group D",
                              date: "Started on 5 Jan 2022",
                              time: "Morning classes",
                              instructors:
                                  "M S Mustafaa, Deepak Kumar Sharma, Sarma prathap singh...",
                            ),
                          ]),
                    ),
                    Expanded(
                      child: Column(children: [
                        Divider(
                          color: Colors.grey.shade800,
                          thickness: 1,
                          indent: 9,
                          endIndent: 9,
                        ),
                        Divider(
                          color: Colors.grey.shade800,
                          thickness: 1,
                          indent: 4,
                          endIndent: 4,
                        ),
                        ExamCard(
                          title: "लक्ष्य - RRB NTPC CBT",
                          date: "Started on 5 Jan 2022",
                          time: "Morning classes",
                          instructors:
                              "Vimlesh Yadav, M S Mustafaa, Deepak Kumar Sharma...",
                        ),
                      ]),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "View subscription plans",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SEE HOW SUBSCRIPTION WORKS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 10,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
                const SizedBox(height: 16),

                //  Educators Section
                EducatorSection(),
                Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
                //Course Section
                CourseSection(),
                Divider(color: Colors.grey.shade800),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Starts at ₹100,000/month',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                        child: Text(
                      "View subscription plans",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ))),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: "Self Study",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
