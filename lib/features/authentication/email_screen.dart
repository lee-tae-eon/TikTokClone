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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "CREATE USERNAME",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "You can always change this later.",
            style: TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
