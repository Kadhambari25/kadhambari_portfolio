import 'package:flutter/material.dart';
import 'widgets/section_container.dart';

class HomePage extends StatelessWidget {
  final VoidCallback? onExploreTap;

  const HomePage({super.key, this.onExploreTap});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFEDE8FF),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Kadhambari Saravanan",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "MCA Student | Flutter & Python Developer",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 25),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const Text(
              "I'm an MCA student at Ethiraj College for Women, passionate about developing mobile and web applications. "
              "I enjoy working on projects that bring meaningful change using Flutter, Dart, and Python. "
              "I'm always eager to explore and learn new technologies to build my knowledge in different areas of IT. "
              "My goal is to join a reputed MNC and grow into a skilled and adaptable professional who contributes to meaningful projects.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ),

          const SizedBox(height: 35),
          ElevatedButton(
            onPressed: onExploreTap, // ✅ scrolls to Projects section
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6C63FF),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text("Explore My Work"),
          ),
        ],
      ),
    );
  }
}
