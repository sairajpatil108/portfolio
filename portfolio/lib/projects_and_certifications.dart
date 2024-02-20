// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/certificationCarousel.dart';
import 'package:portfolio/projectCarousel.dart';

class projectBox extends StatefulWidget {
  const projectBox({super.key});

  @override
  State<projectBox> createState() => _projectBoxState();
}

class _projectBoxState extends State<projectBox> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
            .copyWith(topRight: const Radius.circular(0)),
        //  color: const Color.fromARGB(255, 231, 231, 231),
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
              side: const BorderSide(
                  // color: Colors.white
                  ),
            ),
          ),
          projectCarousel(),
        ],
      ),
    );
  }
}

class certification extends StatefulWidget {
  const certification({super.key});

  @override
  State<certification> createState() => _certificationState();
}

class _certificationState extends State<certification> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).copyWith(
          topLeft: const Radius.circular(0),
        ),
        // color: const Color.fromARGB(255, 231, 231, 231),
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
              side: const BorderSide(
                  //color: Colors.white
                  ),
            ),
          ),
          certificationCarousel(),
        ],
      ),
    );
  }
}
