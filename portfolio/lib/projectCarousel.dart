import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class projectData {
  final String eventName;
  final String dateTime;

  projectData({required this.eventName, required this.dateTime});

  factory projectData.fromJson(Map<String, dynamic> json) {
    return projectData(
      eventName: json['eventName'],
      dateTime: json['dateTime'],
    );
  }
}

List<projectData> eventData = [
  projectData(eventName: "MLA visit", dateTime: "2024-02-05 10:00:00"),
  projectData(eventName: "Gram Sabha", dateTime: "2024-03-15 15:30:00"),
  projectData(eventName: "Conference", dateTime: "2024-04-20 09:00:00"),
  projectData(eventName: "Training Session", dateTime: "2024-05-10 14:00:00"),
  projectData(eventName: "Blood Donation", dateTime: "2024-06-25 18:00:00"),
];

class projectCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
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
            final cardWidth = MediaQuery.of(context).size.width * 1;
            return Container(
              width: cardWidth,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[300], // Example background color
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    event.eventName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    event.dateTime,
                    style: TextStyle(fontSize: 16),
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
