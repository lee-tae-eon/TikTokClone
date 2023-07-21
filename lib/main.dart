import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Container(
        child: Row(
          children: const [
            Text(
              "hello",
            ),
            Gaps.h20,
            Text(
              "hello",
            ),
          ],
        ),
      ),
    );
  }
}
