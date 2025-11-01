import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'skill_page.dart';
import 'project_page.dart';
import 'contact_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kadhambari P S | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFF8F9FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF),
        ),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final ScrollController _controller = ScrollController();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        onHomeTap: () => scrollTo(homeKey),
        onAboutTap: () => scrollTo(aboutKey),
        onSkillsTap: () => scrollTo(skillsKey),
        onProjectsTap: () => scrollTo(projectsKey),
        onContactTap: () => scrollTo(contactKey),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            HomePage(
  key: homeKey,
            onExploreTap: () => scrollTo(projectsKey),),
            AboutPage(key: aboutKey),
            SkillPage(key: skillsKey),
            ProjectPage(key: projectsKey),
            ContactPage(key: contactKey),
          ],
        ),
      ),
    );
  }
}
