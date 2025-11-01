import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onContactTap;

  const NavBar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onProjectsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3,
      centerTitle: true,
      title: const Text(
        'Kadhambari Portfolio',
        style: TextStyle(
          color: Color(0xFF3A3A3A),
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        _navButton("Home", onHomeTap),
        _navButton("About", onAboutTap),
        _navButton("Skills", onSkillsTap),
        _navButton("Projects", onProjectsTap),
        _navButton("Contact", onContactTap),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _navButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF6C63FF),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
