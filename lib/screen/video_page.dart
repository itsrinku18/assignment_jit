import 'package:flutter/material.dart';
class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Video Screen',
          style: TextStyle(
          color: Colors.green,
            fontSize: 24,
        ),),
      ),
    );
  }
}
