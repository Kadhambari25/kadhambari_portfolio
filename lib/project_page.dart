import 'package:flutter/material.dart';
import 'widgets/section_container.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: const Color(0xFFF8F9FC),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Projects", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 25),
          ProjectCard(
            title: "Crop Prediction & Farmer Support App",
            description:
                "Developed a Flutter app that predicts crop yield using live weather and location data, helping farmers plan better.",
            tech: "Flutter, Dart, Machine Learning, OpenWeatherMap API, GPS",
          ),
          SizedBox(height: 20),
          ProjectCard(
            title: "Secure Password Manager App",
            description:
                "A Flutter app with biometric authentication, secure local storage, and notifications for password reminders.",
            tech: "Flutter, Dart, local_auth, SharedPreferences",
          ),
          SizedBox(height: 20),
          ProjectCard(
            title: "Employee Management & Attendance Tracker",
            description:
                "SQL-based system for managing employee details, attendance, and automated reporting using triggers and views.",
            tech: "SQL, MySQL Workbench",
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title, description, tech;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.tech,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(fontSize: 15, height: 1.5)),
            const SizedBox(height: 8),
            Text("Technologies: $tech", style: const TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}
