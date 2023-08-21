import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class mobile_screen_ui extends StatefulWidget {
  const mobile_screen_ui({super.key});

  @override
  State<mobile_screen_ui> createState() => _mobile_screen_uiState();
}

class _mobile_screen_uiState extends State<mobile_screen_ui> {
  @override
  Widget build(BuildContext context) {
    List carousel_images = [
      {
        "id": 1,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG20230715130934-01-01.jpeg"
      },
      {
        "id": 2,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG_20230819_14502664-01.jpeg"
      },
      {
        "id": 3,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG_20230819_09493568.jpg"
      },
    ];
    final CarouselController carouselController = CarouselController();
    int current_index = 0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                  ),
                  height: 40,
                  width: 120,
                  child: Center(
                      child: Text(
                    'Download CV',
                    style: GoogleFonts.ptSerif(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
          drawer: Drawer(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Text('About'), // mychip(title: 'About'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Projects'), // mychip(title: 'Projects'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Skills'), // mychip(title: 'Skills'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Contact'), // mychip(title: 'Contact'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          //
          //
          //
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 500,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(20).copyWith(
                            topLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10), // Set the border radius
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://media.licdn.com/dms/image/D5603AQFcSd7AI63WtA/profile-displayphoto-shrink_800_800/0/1670228912698?e=1697673600&v=beta&t=iKOuzR9KTQFfRw5APojJE_tUdyEQlvSxI6QcQpdvPSU'), // Replace with the URL of your network image
                              fit: BoxFit
                                  .cover, // Choose the BoxFit that best suits your layout
                            ),
                            // You can add other decoration properties like color, border, etc.
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: screenWidth * 0.79,
                            height: 300,
                            child: SingleChildScrollView(
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
                                        speed:
                                            const Duration(milliseconds: 200),
                                      ),
                                    ],
                                    repeatForever: true,
                                  ),
                                  Text(
                                    "I'm Sairaj",
                                    style: GoogleFonts.ptSerif(
                                        color: Colors.black,
                                        fontSize: 20,
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
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0).copyWith(left: 20),
                  child: Row(
                    children: [
                      Icon(EvaIcons.github),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(EvaIcons.linkedin),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(EvaIcons.email)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(0).copyWith(left: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Pune, India')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  width: screenWidth * 0.9,
                  child: Container(
                    height: 450,
                    width: screenWidth * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 60, 10, 10),
                      child: Stack(
                        children: [
                          InkWell(
                              onTap: () {
                                print(current_index);
                              },
                              child: CarouselSlider(
                                  items: carousel_images
                                      .map((item) => Image.asset(
                                            item['imagepath'],
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ))
                                      .toList(),
                                  options: CarouselOptions(
                                    scrollPhysics:
                                        const BouncingScrollPhysics(),
                                    autoPlay: true,
                                    aspectRatio: 1.3,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      setState(index, reason) {
                                        current_index = index;
                                      }

                                      ;
                                    },
                                  )))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
