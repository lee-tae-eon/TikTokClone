import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    this.ConfrimText = "Next",
  });

  final bool disabled;

  final String ConfrimText;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size4),
          color:
              !disabled ? Theme.of(context).primaryColor : Colors.grey.shade300,
        ),
        duration: const Duration(milliseconds: 300),
        // AnimatedDefaultTextStyle => 텍스트가 바뀔 때 애니메이션 효과
        // style 을 줘야함
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            color: !disabled ? Colors.white : Colors.grey.shade400,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            ConfrimText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
