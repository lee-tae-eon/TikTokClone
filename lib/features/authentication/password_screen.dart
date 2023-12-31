import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';
import 'package:ticktok_clone/features/authentication/birthday_screen.dart';
import 'package:ticktok_clone/features/authentication/widgets/form_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  // * 이벤트 리스너를 추가하기 때문에 dispose를 해야한다.
  // * dispose 를 하지 않으면 memory 부족으로 crash 날 확률이 잇다.
  final TextEditingController _passwordController = TextEditingController();
  String _password = "";

  bool _obscureText = true;

  @override
  void dispose() {
    _passwordController.dispose();
    // * 모든 이벤트를 dispose하고  super 를 dispose한다
    super.dispose();
  }

  bool _isPasswordValid() {
    return _password.isEmpty && _password.length < 8;
  }

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    if (_password.isEmpty || _isPasswordValid()) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BirthDayScreen(),
      ),
    );
  }

  void _onClearTap() {
    _passwordController.clear();
  }

  void _toggleObscureTap() {
    _obscureText = !_obscureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sign up",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v40,
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v16,
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                onEditingComplete: _onSubmit,
                autocorrect: false,
                decoration: InputDecoration(
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _onClearTap,
                        child: FaIcon(
                          FontAwesomeIcons.solidCircleXmark,
                          color: Colors.grey.shade500,
                          size: Sizes.size20,
                        ),
                      ),
                      Gaps.h14,
                      GestureDetector(
                        onTap: _toggleObscureTap,
                        child: FaIcon(
                          _obscureText == true
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.grey.shade500,
                          size: Sizes.size20,
                        ),
                      ),
                    ],
                  ),
                  hintText: "Make it strong",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
              ),
              Gaps.v10,
              const Text(
                "Your password must have",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v10,
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.circleCheck,
                      size: Sizes.size20,
                      color: _isPasswordValid()
                          ? Colors.grey.shade400
                          : Colors.green),
                  Gaps.h5,
                  const Text(
                    '8 to 20 characters',
                  ),
                ],
              ),
              Gaps.v16,
              GestureDetector(
                  onTap: _onSubmit,
                  child: FormButton(
                      disabled: _password.isEmpty || _isPasswordValid())),
            ],
          ),
        ),
      ),
    );
  }
}
