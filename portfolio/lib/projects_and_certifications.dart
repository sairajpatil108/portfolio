import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class projects_and_certifications extends StatefulWidget {
  const projects_and_certifications({super.key});

  @override
  State<projects_and_certifications> createState() =>
      _projects_and_certificationsState();
}

class _projects_and_certificationsState
    extends State<projects_and_certifications> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.075,
          ),
          Container(
            height: 500,
            width: screenWidth * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
                  .copyWith(topRight: Radius.circular(0)),
              color: Color.fromARGB(255, 231, 231, 231),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Chip(
                    label: Text(
                      'Projects',
                      style: GoogleFonts.ptSerif(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: screenWidth * 0.04,
          ),
          Container(
            height: 500,
            width: screenWidth * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.circular(0),
              ),
              color: Color.fromARGB(255, 231, 231, 231),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Chip(
                    label: Text(
                      'Certifications',
                      style: GoogleFonts.ptSerif(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
