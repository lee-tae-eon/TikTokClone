import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: AnimatedCrossFade(
          firstChild: Column(
            children: const [
              Text(
                "Enjoy the ride",
                style: TextStyle(
                  fontSize: Sizes.size40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v16,
              Text(
                "Videos are personalized for you based on what you watch, like, and share.",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ],
          ),
          secondChild: Column(
            children: const [
              Text(
                "Follow the rules",
                style: TextStyle(
                  fontSize: Sizes.size40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v16,
              Text(
                "Videos are personalized for you based on what you watch, like, and share.",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//  Text(
//                       "Enjoy the ride",
//                       style: TextStyle(
//                         fontSize: Sizes.size40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Gaps.v16,
//                     Text(
//                       "Videos are personalized for you based on what you watch, like, and share.",
//                       style: TextStyle(
//                         fontSize: Sizes.size20,
//                       ),
//                     ),