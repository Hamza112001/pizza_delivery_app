import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_button.dart';
import 'package:pizza_delivery_app/components/my_textfield.dart';
import 'package:pizza_delivery_app/services/auth/auth_service.dart';

class SignUpPage extends StatefulWidget {
  final void Function()? onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  void register() async {
    final _authService = AuthService();

    if (passController.text == confirmPassController.text) {
      try {
        await _authService.signUpWithEmailAndPassword(
            emailController.text, passController.text);
      } catch (e) {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text('Password dont match'),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const CircleAvatar(maxRadius: 100,foregroundImage: NetworkImage('https://i.pinimg.com/originals/eb/17/d0/eb17d0925c49ef13af6e84cdfeaad079.gif')),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Lets Create an account for you ',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                controller: passController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                controller: confirmPassController,
                hintText: 'ConfirmPassword',
                obscureText: true),
            MyButton(
                onTap:register,
                text: 'Signup'),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have and account ?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
