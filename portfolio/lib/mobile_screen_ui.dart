// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/certificationCarousel.dart';
import 'package:portfolio/introBoxMobile.dart';
import 'package:portfolio/main.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class mobile_screen_ui extends StatefulWidget {
  const mobile_screen_ui({super.key});

  @override
  State<mobile_screen_ui> createState() => _mobile_screen_uiState();
}

class _mobile_screen_uiState extends State<mobile_screen_ui> {
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);
    List carouselImages = [
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
      {
        "id": 4,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/20230920_145435-01.jpeg"
      },
    ];
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent.withOpacity(0.5),
                      ),
                      onPressed: themeNotifier.toggleTheme,
                      child: Row(
                        children: [
                          const Text("toggle theme"),
                          Padding(
                            padding:
                                const EdgeInsets.all(3.0).copyWith(left: 10),
                            child: Icon(
                              themeNotifier.isDarkMode
                                  ? Icons.dark_mode_rounded
                                  : Icons.light_mode_rounded,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launch(
                            'https://drive.google.com/file/d/1tStmA69M8-AWkvOVZ7XLI1akQo6f7Caw/view?usp=drive_link');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.black,
                        ),
                        height: 40,
                        width: 120,
                        child: Center(
                            child: Text(
                          'Download CV',
                          style: GoogleFonts.ptSerif(
                              //color: Colors.white
                              ),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          drawer: Drawer(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Text(
                    'About',
                    style: GoogleFonts.ptSerif(fontSize: 20),
                  ), // mychip(title: 'About'),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Projects',
                      style: GoogleFonts.ptSerif(
                          fontSize: 20)), // mychip(title: 'Projects'),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Skills',
                      style: GoogleFonts.ptSerif(
                          fontSize: 20)), // mychip(title: 'Skills'),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text('Contact',
                      style: GoogleFonts.ptSerif(
                          fontSize: 20)), // mychip(title: 'Contact'),
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
                const SizedBox(
                  height: 20,
                ),
                const introBoxMobile(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0).copyWith(left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: InkWell(
                          child: const Icon(EvaIcons.github),
                          onTap: () async {
                            await launch('https://github.com/sairajpatil108');
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: InkWell(
                          child: const Icon(EvaIcons.linkedin),
                          onTap: () async {
                            await launch(
                                'https://www.linkedin.com/in/sairajpatil108');
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: InkWell(
                          child: const Icon(EvaIcons.email),
                          onTap: () async {
                            await launch(
                                'mailto:sairajpatil108@gmail.com?subject=News&body=Hey!');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(0).copyWith(left: 20),
                  child: const Column(
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
                Container(
                    height: 400,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                        //  color: const Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              child: SizedBox(
                                height: 60,
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                        'Curious about me? Here you have it:',
                                        textStyle: GoogleFonts.ptSerif(
                                            // color: Colors.black, fontSize: 20
                                            ),
                                        speed:
                                            const Duration(milliseconds: 100)),
                                  ],
                                  totalRepeatCount: 10,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                                "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text(
                                "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text("🎓 My Academic Ascent:\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text(
                                "\nStarting my academic escapades in the vibrant halls of Podar International School, Latur, I've come a long way to where I am today – pursuing a B.Tech in Computer Science from the prestigious Pimpri Chinchwad College of Engineering, Pune. 📚 Those early days laid the foundation for my thirst for knowledge, and my journey through the years has been a tapestry of challenges, growth, and unyielding determination."),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                                "✈️ Wanderlust and Whimsy – Beyond the Screen:\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text(
                                "\nAs much as I adore pixels, there's more to life than lines of code. My heart races at the mere thought of venturing into uncharted territories – suitcase in hand and curiosity in my eyes. 🌍 Traveling is my way of collecting stories and memories,  each a testament to my unquenchable wanderlust. And when I'm not exploring the world, you'll find me huddled in deep discussions with fellow adventurers, unraveling the mysteries of life, universe, spirituality and everything. 🛋️🌌"),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text("A Glimpse into My Creative Realm! 🌟\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text(
                                "\nBeyond the realms of coding and crafting user experiences, my world expands into a tapestry of passions that define the vibrant persona of Sairaj Patil. The melodies of music infuse rhythm into my coding endeavors, while brushes and pencils become my compass in the uncharted territory of art. From digital UIs to tangible canvases, my creative spirit finds expression, whether I'm orchestrating code symphonies, blending hues, or molding materials into intricate crafts. This fusion of art and technology isn't just a facet of my portfolio; it's the essence of my existence. Welcome to the realm where curiosity knows no boundaries and creativity paints the journey. 🎵🎨🚀"),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(30).copyWith(
                          topLeft: const Radius.circular(0),
                          bottomRight: const Radius.circular(0))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            'Skills and Tech I have worked on',
                            style: GoogleFonts.ptSerif(
                                //  color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          side: const BorderSide(
                              // color: Colors.white
                              ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-java-logo-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-c-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-c-programming-96.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-figma-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-flutter-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-git-96.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-python-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-kotlin-96.png'),
                          Image.asset(
                              'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-firebase-96.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Divider(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                    child: Padding(
                  padding:
                      const EdgeInsets.all(8.0).copyWith(left: 20, right: 20),
                  child: const Text("Projects"),
                )),
                const SizedBox(
                  height: 20,
                ),
                const projectCarouselMobile(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Divider(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Card(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("certifications"),
                )),
                const SizedBox(
                  height: 20,
                ),
                const cretificationCarouselMobile(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Divider(),
                ),
                SizedBox(
                  width: screenWidth,
                  child: Column(
                    children: [
                      Chip(
                        label: Text(
                          'Get in touch',
                          style: GoogleFonts.ptSerif(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        side: const BorderSide(
                            //color: Colors.white
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.call),
                              Text(
                                '  +91 8767069180',
                                style: GoogleFonts.ptSerif(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.mail),
                              Text(
                                '  sairajpatil108@gmail.com',
                                style: GoogleFonts.ptSerif(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(EvaIcons.linkedin),
                              Text(
                                '  sairajpatil108',
                                style: GoogleFonts.ptSerif(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(EvaIcons.github),
                              Text(
                                '  sairajpatil108',
                                style: GoogleFonts.ptSerif(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}

class projectCarouselMobile extends StatefulWidget {
  const projectCarouselMobile({super.key});

  @override
  State<projectCarouselMobile> createState() => _projectCarouselMobileState();
}

class _projectCarouselMobileState extends State<projectCarouselMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.3,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            aspectRatio: 19 / 9, // Aspect ratio
            viewportFraction: 0.8, // Fraction of the viewport width
            enlargeCenterPage: true, // Makes the center item larger
          ),
          items: eventData.map((event) {
            // Calculate the width of each card based on the viewport fraction
            final cardWidth = MediaQuery.of(context).size.width;
            return Container(
              width: cardWidth,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0).copyWith(
                    topLeft: const Radius.circular(0),
                    bottomRight: const Radius.circular(0)),
                color: Colors.grey[300], // Example background color
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    event.eventName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.dateTime,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class cretificationCarouselMobile extends StatefulWidget {
  const cretificationCarouselMobile({super.key});

  @override
  State<cretificationCarouselMobile> createState() =>
      _cretificationCarouselMobileState();
}

class _cretificationCarouselMobileState
    extends State<cretificationCarouselMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.3,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            aspectRatio: 19 / 9, // Aspect ratio
            viewportFraction: 0.8, // Fraction of the viewport width
            enlargeCenterPage: true, // Makes the center item larger
          ),
          items: eventData.map((event) {
            // Calculate the width of each card based on the viewport fraction
            final cardWidth = MediaQuery.of(context).size.width;
            return Container(
              width: cardWidth,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0).copyWith(
                    topRight: const Radius.circular(0),
                    bottomLeft: const Radius.circular(0)),
                color: Colors.grey[300], // Example background color
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    event.eventName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.dateTime,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
