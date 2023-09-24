import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class skills_box extends StatefulWidget {
  const skills_box({super.key});

  @override
  State<skills_box> createState() => _skills_boxState();
}

class _skills_boxState extends State<skills_box> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: 250,
      width: screenWidth * 0.95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 231, 231),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Chip(
              label: Text('Skills and Tech I have worked on',
                  style: GoogleFonts.ptSerif(
                      fontSize: 15, fontWeight: FontWeight.w600)),
              side: BorderSide(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-java-logo-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-c-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-c-programming-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-figma-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-flutter-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-git-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-python-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-kotlin-96.png'),
                Image.asset(
                    'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-firebase-96.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
