import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class topbar extends StatefulWidget {
  const topbar({super.key});

  @override
  State<topbar> createState() => _topbarState();
}

class _topbarState extends State<topbar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: 50,
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              child: mychip(title: 'Contact'),
              onTap: () {},
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            InkWell(
              child: mychip(title: 'Skills'),
              onTap: () {},
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            InkWell(
              child: mychip(title: 'Projects'),
              onTap: () {},
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            InkWell(
              child: mychip(title: 'About'),
              onTap: () {},
            ),
            SizedBox(
              width: screenWidth * 0.2,
            ),
            InkWell(
              child: Chip(
                side: BorderSide(color: Colors.white),
                label: Text('Download CV',
                    style: GoogleFonts.merriweather(color: Colors.white)),
                backgroundColor: Colors.black,
              ),
              onTap: () async {
                await launch(
                    'https://drive.google.com/file/d/1KoM3EW_aGwckUk0qf5qi_9c3co1j8c0f/view?usp=drive_link');
              },
            ),
            SizedBox(
              width: screenHeight * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}

class mychip extends StatefulWidget {
  mychip({super.key, required this.title});
  var title;

  @override
  State<mychip> createState() => _mychipState();
}

class _mychipState extends State<mychip> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Colors.white),
      label: Text(
        widget.title,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
      ),
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
    );
  }
}
