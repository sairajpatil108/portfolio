import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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

    void _launchURL() async {
  const url = 'https://www.linkedin.com/in/sairajpatil108/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BGx6%2B2QEbRQa5ygv7evcx1Q%3D%3D'; // Replace with your desired URL
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
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
                Center(
                  child: Container(
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
                Container(
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'Curious about me? Here you have it:',
                                    textStyle: GoogleFonts.ptSerif(
                                        color: Colors.black, fontSize: 20),
                                    speed: Duration(milliseconds: 100)),
                              ],
                              totalRepeatCount: 10,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                              "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          SizedBox(
                            height: 30,
                          ),
                          Text("🎓 My Academic Ascent:\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "\nStarting my academic escapades in the vibrant halls of Podar International School, Latur, I've come a long way to where I am today – pursuing a B.Tech in Computer Science from the prestigious Pimpri Chinchwad College of Engineering, Pune. 📚 Those early days laid the foundation for my thirst for knowledge, and my journey through the years has been a tapestry of challenges, growth, and unyielding determination."),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                              "✈️ Wanderlust and Whimsy – Beyond the Screen:\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "\nAs much as I adore pixels, there's more to life than lines of code. My heart races at the mere thought of venturing into uncharted territories – suitcase in hand and curiosity in my eyes. 🌍 Traveling is my way of collecting stories and memories,  each a testament to my unquenchable wanderlust. And when I'm not exploring the world, you'll find me huddled in deep discussions with fellow adventurers, unraveling the mysteries of life, universe, spirituality and everything. 🛋️🌌"),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          SizedBox(
                            height: 30,
                          ),
                          Text("A Glimpse into My Creative Realm! 🌟\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "\nBeyond the realms of coding and crafting user experiences, my world expands into a tapestry of passions that define the vibrant persona of Sairaj Patil. The melodies of music infuse rhythm into my coding endeavors, while brushes and pencils become my compass in the uncharted territory of art. From digital UIs to tangible canvases, my creative spirit finds expression, whether I'm orchestrating code symphonies, blending hues, or molding materials into intricate crafts. This fusion of art and technology isn't just a facet of my portfolio; it's the essence of my existence. Welcome to the realm where curiosity knows no boundaries and creativity paints the journey. 🎵🎨🚀"),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: screenWidth * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(30).copyWith(
                          topLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            'Skills',
                            style: GoogleFonts.ptSerif(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.abc_outlined)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: screenWidth * 0.9,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 231, 231),
                        borderRadius: BorderRadius.circular(30).copyWith(
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(0))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            label: Text(
                              'Projects',
                              style: GoogleFonts.ptSerif(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            side: BorderSide(color: Colors.white),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //     width: screenWidth * 0.9,
                //     height: 300,
                //     decoration: BoxDecoration(
                //         color: Color.fromARGB(255, 231, 231, 231),
                //         borderRadius: BorderRadius.circular(30).copyWith(
                //             topLeft: Radius.circular(0),
                //             bottomRight: Radius.circular(0))),
                //     child: Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Chip(
                //             label: Text(
                //               'Experiance',
                //               style: GoogleFonts.ptSerif(
                //                   color: Colors.black,
                //                   fontSize: 15,
                //                   fontWeight: FontWeight.w600),
                //             ),
                //             side: BorderSide(color: Colors.white),
                //           ),
                //         )
                //       ],
                //     )),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Container(
                  width: screenWidth,
                  child: Column(
                    children: [
                      Chip(
                        label: Text(
                          'Get in touch',
                          style: GoogleFonts.ptSerif(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        side: BorderSide(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call),
                          Text(
                            '  +91 8767069180',
                            style: GoogleFonts.ptSerif(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                          // SizedBox(
                          //   width: screenWidth * 0.24,
                          // ),
                          Icon(Icons.mail),
                          Text(
                            'sairajpatil108@gmail.com',
                            style: GoogleFonts.ptSerif(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(EvaIcons.linkedin),
                          Text(
                            'sairajpatil108',
                            style: GoogleFonts.ptSerif(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                          Icon(EvaIcons.github),
                          Text(
                            'sairajpatil108',
                            style: GoogleFonts.ptSerif(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
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
