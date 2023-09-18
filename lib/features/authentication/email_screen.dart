import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/sizes.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign up",
        ),
      ),
      body: Column(children: const [
        Text(
          "CREATE USERNAME",
          style: TextStyle(
            fontSize: Sizes.size20,
          ),
        )
      ]),
    );
  }
}
