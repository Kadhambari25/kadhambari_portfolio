import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/section_container.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // function to open URL or local asset
  void _launch(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, webOnlyWindowName: '_blank')) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Contact Me",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),

          const Text("📍 Chennai, Tamil Nadu"),
          const Text("📧 kadhambarisaravanan@gmail.com"),
          const Text("📱 8248796102"),
          const SizedBox(height: 30),

          // contact buttons
          Wrap(
            spacing: 15,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => _launch('https://linkedin.com/in/kadhambari-ps'),
                icon: const Icon(Icons.link),
                label: const Text('LinkedIn'),
              ),
              ElevatedButton.icon(
                onPressed: () => _launch('https://github.com/Kadhambari25'),
                icon: const Icon(Icons.code),
                label: const Text('GitHub'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // ✅ local file path for web
                  _launch('assets/files/Kadhambari_P_S_Resume.pdf');
                },
                icon: const Icon(Icons.file_download),
                label: const Text('Download Resume'),
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Text(
            "© 2025 Kadhambari Saravanan | Built with Flutter 💜",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
