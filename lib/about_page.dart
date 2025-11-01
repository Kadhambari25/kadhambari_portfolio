import 'package:flutter/material.dart';
import 'widgets/section_container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: const Color(0xFFF8F9FC),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "About Me",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 750),
            child: const Text(
              "I'm an MCA student at Ethiraj College for Women, passionate about developing mobile and web applications. "
              "I enjoy working on projects that bring meaningful change using Flutter, Dart, and Python. "
              "I'm always eager to explore and learn new technologies to build my knowledge in different areas of IT. "
              "My goal is to join a reputed MNC and grow into a skilled and adaptable professional who contributes to meaningful projects.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ),

          const SizedBox(height: 50),
          const Text(
            "Education",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "🎓 Master of Computer Applications (2024–Present)\nEthiraj College for Women, Chennai",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            "🎓 Bachelor of Computer Science (2020–2023)\nMuthayammal College of Arts and Science, Rasipuram (81%)",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
