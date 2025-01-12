import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/homeScreen.dart';
import 'package:portfolio_app/screens/projectsScreen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hieee! I am Shiwani Soni, a passionate Flutter Developer who loves to sleep',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Skills: Flutter, Java, Python, REST APIs',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Education: BTech, IT from MCKV Institute of Engineering',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Experience: Application Developer at CodeClouds',
          ),
        ],
      ),
    );
  }
}
