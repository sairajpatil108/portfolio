

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class getInTouch extends StatelessWidget {
  const getInTouch({super.key});

  @override
  Widget build(BuildContext context) {

        double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
          width: screenWidth,
          height: 200,
          child: Column(
            children: [
              Chip(
                label: Text(
                  'Get in touch',
                  style: GoogleFonts.ptSerif(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                side: const BorderSide(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(left: 30),
                child: Row(
                  children: [
                    const Icon(Icons.call),
                    Text(
                      '  +91 8767069180',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.4,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.mail),
                    ),
                    Text(
                      'sairajpatil108@gmail.com',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(left: 30),
                child: Row(
                  children: [
                    const Icon(EvaIcons.linkedin),
                    Text(
                      '   sairajpatil108',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.42,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(EvaIcons.github),
                    ),
                    Text(
                      '  sairajpatil108',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
  }
}