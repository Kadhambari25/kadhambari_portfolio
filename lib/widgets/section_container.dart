import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry padding;

  const SectionContainer({
    super.key,
    required this.child,
    this.color,
    this.padding = const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
