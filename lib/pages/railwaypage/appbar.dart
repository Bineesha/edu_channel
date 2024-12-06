import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Align items to space out the title and search icon
          children: [
            CircleAvatar(
              radius: 10, // Adjust the size of the CircleAvatar
              backgroundImage: AssetImage('assets/images/circle.jpg'),
              backgroundColor: Colors
                  .grey.shade200, // Optional: Background color if no image
            ),
            Text(
              "Railway Exams",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade800),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      );
  }
}