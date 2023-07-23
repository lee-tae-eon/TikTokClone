import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Gaps.v80,
            Text(
              "Sign up for TikTok",
              style: TextStyle(
                fontSize: Sizes.size24,
              ),
            ),
            Gaps.v20,
            Text(
              "Create a profile, follow other accounts, make your own videos, and more.",
            ),
          ],
        ),
      ),
    );
  }
}


// * safeArea (상단 status bar 같은곳은 가려지지 않도록 해주는 위젯)