import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants/gaps.dart';
import 'package:ticktok_clone/constants/sizes.dart';
import 'package:ticktok_clone/features/authentication/widgets/form_button.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  // * form state init
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      // * formstate를 이용해서 모든 텍스트 필드의 validate 를 체크
      // * 하나라도 false이면 error 반환
      if (_formKey.currentState!.validate()) {
        // *save: 모든 텍스트 입력에 onSaved callback을 실행하게함
        _formKey.currentState!.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Gaps.v28,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
                validator: (value) {
                  return "Check your email please";
                },
              ),
              Gaps.v16,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
                validator: (value) {
                  return "wrong password";
                },
              ),
              Gaps.v28,
              GestureDetector(
                onTap: _onSubmitTap,
                child: const FormButton(
                  disabled: false,
                  ConfrimText: "Log In",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
