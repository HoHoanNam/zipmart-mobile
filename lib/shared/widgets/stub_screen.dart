import 'package:flutter/material.dart';

/// Placeholder for a destination Home links to that isn't built yet — keeps
/// navigation from crashing without pretending the feature is done.
class StubScreen extends StatelessWidget {
  const StubScreen({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.construction_outlined, size: 40),
            const SizedBox(height: 12),
            const Text('Sắp ra mắt'),
            if (subtitle != null) Text(subtitle!),
          ],
        ),
      ),
    );
  }
}
