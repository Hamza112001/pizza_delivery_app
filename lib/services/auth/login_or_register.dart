import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/pages/login_page.dart';
import 'package:pizza_delivery_app/pages/signup_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLoginPageShowed = true;
  void toggle() {
    setState(() {
      isLoginPageShowed = !isLoginPageShowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPageShowed) {
      return LoginPage(onTap: toggle);
    } else {
      return SignUpPage(onTap: toggle);
    }
  }
}
