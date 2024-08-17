import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/components/my_button.dart';
import 'package:pizza_delivery_app/components/my_textfield.dart';
import 'package:pizza_delivery_app/pages/home_page.dart';
import 'package:pizza_delivery_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passEditingController;
  @override
  void initState() {
    _emailEditingController = TextEditingController();
    _passEditingController = TextEditingController();
    super.initState();
  }

  //login button
  void login() async {
    // to be filled by auth
    final _authService = AuthService();
    try {
      _authService.signInWithEmailAndPassword(
          _emailEditingController.text, _passEditingController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
    //then
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                maxRadius: 130,
                foregroundImage: NetworkImage(
                    'https://cdn.dribbble.com/users/5464502/screenshots/20106541/media/1f4cdadd977b7f320bc7fbb102bd984d.gif')),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Food Delivery App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: _emailEditingController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                controller: _passEditingController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            MyButton(onTap: login, text: 'Login'),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
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
