// ignore_for_file: camel_case_types

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class introBoxMobile extends StatefulWidget {
  const introBoxMobile({super.key});

  @override
  State<introBoxMobile> createState() => _introBoxMobileState();
}

class _introBoxMobileState extends State<introBoxMobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
            //// color: const Color.fromARGB(255, 231, 231, 231),
            borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: const Radius.circular(0),
                bottomRight: const Radius.circular(0))),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                  image: const DecorationImage(
                      image: AssetImage(
                          "D:/flutter/projects/portfolio/portfolio/lib/assets/images/profile.jpeg"))
                  // You can add other decoration properties like// color, border, etc.
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: screenWidth * 0.79,
                child: Column(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Hey!',
                          textStyle: GoogleFonts.ptSerif(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      repeatForever: true,
                    ),
                    Text(
                      "I'm Sairaj",
                      style: GoogleFonts.ptSerif(
                          // color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\nA passionate B.Tech Computer Science student with a flair for innovative solutions. I thrive on tackling complex challenges and transforming them into meaningful digital experiences. From coding algorithms to crafting intuitive user interfaces, my journey in the world of technology is fueled by curiosity and a determination to create impactful solutions. Explore my projects and achievements as I continue to learn, grow, and contribute to the ever-evolving field of computer science.",
                      style: GoogleFonts.cabin(
                          // color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
