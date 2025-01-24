import 'package:flutter/material.dart';
class PerformanceScreen extends StatelessWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        "Performance Screen Content",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}