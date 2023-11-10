import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';
import 'package:ticktok_clone/features/authentication/widgets/form_button.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  // * 이벤트 리스너를 추가하기 때문에 dispose를 해야한다.
  // * dispose 를 하지 않으면 memory 부족으로 crash 날 확률이 잇다.
  final TextEditingController _emailStateController = TextEditingController();
  String _email = "";

  @override
  void dispose() {
    _emailStateController.dispose();
    // * 모든 이벤트를 dispose하고  super 를 dispose한다
    super.dispose();
  }

  String? _isEmailValid() {
    if (_email.isEmpty) return null;
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return null;
  }

  @override
  void initState() {
    super.initState();
    _emailStateController.addListener(() {
      setState(() {
        _email = _emailStateController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "What is your email?",
              style: TextStyle(
                fontSize: Sizes.size20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v16,
            TextField(
              controller: _emailStateController,
              decoration: InputDecoration(
                hintText: "Email",
                errorText: _isEmailValid(),
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
            Gaps.v16,
            FormButton(disabled: _email.isEmpty),
          ],
        ),
      ),
    );
  }
}
