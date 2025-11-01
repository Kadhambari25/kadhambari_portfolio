import 'package:flutter/material.dart';
import 'widgets/section_container.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: Colors.white,
      child: Column(
        children: const [
          Text("Technical Skills", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 25),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Dart")),
              Chip(label: Text("Python")),
              Chip(label: Text("SQL")),
              Chip(label: Text("C")),
              Chip(label: Text("C++")),
              Chip(label: Text("HTML")),
              Chip(label: Text("MS Office")),
            ],
          ),
          SizedBox(height: 45),
          Text("Soft Skills", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "Continuous Learner | Adaptability | Time Management | Active Listener | Self-Motivated",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
