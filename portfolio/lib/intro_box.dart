import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class intro_box extends StatefulWidget {
  const intro_box({super.key});

  @override
  State<intro_box> createState() => _intro_boxState();
}

class _intro_boxState extends State<intro_box> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: 400,
      width: screenWidth * 0.95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 231, 231),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(30),
          )),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 30, 40),
            child: Container(
                width: screenWidth * 0.6,
                height: 350,
                child: Column(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Hey!',
                          textStyle: GoogleFonts.ptSerif(
                            fontSize: 32.0,
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
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\nA passionate B.Tech Computer Science student with a flair for innovative solutions. I thrive on tackling complex challenges and transforming them into meaningful digital experiences. From coding algorithms to crafting intuitive user interfaces, my journey in the world of technology is fueled by curiosity and a determination to create impactful solutions. Explore my projects and achievements as I continue to learn, grow, and contribute to the ever-evolving field of computer science.",
                      style: GoogleFonts.cabin(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            child: Icon(EvaIcons.github),
                            onTap: () async {
                              await launch('https://github.com/sairajpatil108');
                            },
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            child: Icon(EvaIcons.linkedin),
                            onTap: () async {
                              await launch(
                                  'https://www.linkedin.com/in/sairajpatil108');
                            },
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            child: Icon(EvaIcons.email),
                            onTap: () async {
                              await launch(
                                  'mailto:sairajpatil108@gmail.com?subject=News&body=Hey!');
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(width: screenWidth * 0.07),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: screenWidth * 0.15, // Set the width of the container
                height: screenWidth * 0.15, // Set the height of the container
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media.licdn.com/dms/image/D5603AQFcSd7AI63WtA/profile-displayphoto-shrink_800_800/0/1670228912698?e=1697673600&v=beta&t=iKOuzR9KTQFfRw5APojJE_tUdyEQlvSxI6QcQpdvPSU'), // Replace with the URL of your network image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Pune, India')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
