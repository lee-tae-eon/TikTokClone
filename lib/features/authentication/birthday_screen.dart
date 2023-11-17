import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';
import 'package:ticktok_clone/features/authentication/email_screen.dart';
import 'package:ticktok_clone/features/authentication/widgets/form_button.dart';

class BirthDayScreen extends StatefulWidget {
  const BirthDayScreen({super.key});

  @override
  State<BirthDayScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<BirthDayScreen> {
  // * 이벤트 리스너를 추가하기 때문에 dispose를 해야한다.
  // * dispose 를 하지 않으면 memory 부족으로 crash 날 확률이 잇다.
  final TextEditingController _usernameController = TextEditingController();
  String _usernameState = "";

  @override
  void dispose() {
    _usernameController.dispose();
    // * 모든 이벤트를 dispose하고  super 를 dispose한다
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(() {
      setState(() {
        _usernameState = _usernameController.text;
      });
    });
  }

//* StatefulWidget 의 state안에 있으면 BuilderContext를 받을 필요가 없다.
// * 어디서든 context를 사용할 수 있다.
  void onNextTap() {
    if (_usernameState.isEmpty) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EmailScreen(),
      ),
    );
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
              "Create username",
              style: TextStyle(
                fontSize: Sizes.size20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v8,
            const Text(
              "You can always change this later.",
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
            Gaps.v16,
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Username",
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
            // TextButton 이라는 widget이 존재한다
            GestureDetector(
              onTap: onNextTap,
              child: FormButton(
                disabled: _usernameState.isEmpty,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
