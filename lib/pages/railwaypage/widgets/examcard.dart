import 'package:flutter/material.dart';

class ExamCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String instructors;

  const ExamCard({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.instructors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1,
              color: Colors.grey.shade800,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Image.asset(
                "assets/images/exam.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            Row(children: [
              Container(
                height: 18,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.grey.shade800),
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 15))),
                child: Center(
                    child: Text(
                  "धि",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "FULL SYLLABUS COMPLETION ",
                style: TextStyle(color: Colors.blue[900], fontSize: 8),
              )
            ]),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 11),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  date,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Container(
                    child: Text(
                      instructors,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      maxLines:
                          2, // Ensures that the text is restricted to two lines
                      overflow: TextOverflow
                          .ellipsis, // Adds ellipsis if the text overflows
                      softWrap:
                          true, // Allows the text to wrap to the next line
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
