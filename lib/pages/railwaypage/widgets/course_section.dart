import 'package:flutter/material.dart';
class CourseSection extends StatelessWidget {
  const CourseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Courses on all subjects",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Upcoming",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize
                                      .min, // Ensures minimal space is used
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text and icon vertically in the center
                                  children: [
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        width:
                                            4), // Optional: Adjust the space between the text and icon
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.white, size: 10),
                                  ],
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 150,
                            child: Image.asset(
                              "assets/images/exam3.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Container(
                            height: 18,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.grey.shade800),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 15))),
                            child: Center(
                                child: Text(
                              "धि",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "GENERAL AWARENESS ",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                        Text(
                          'Target: Course on GK for ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Railway Group D ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Saurabh Malik',
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                );
  }
}