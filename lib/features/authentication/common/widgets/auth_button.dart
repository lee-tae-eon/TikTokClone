import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;

  const AuthButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // * FractionallySizedBox :  box 위젯 픽셀 정렬이 아닌 부모의 크기에 비례해서 크기를 정해주는 위젯
    return FractionallySizedBox(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            width: Sizes.size2,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
