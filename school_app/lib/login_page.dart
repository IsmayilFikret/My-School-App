import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 213, 213),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  _Body();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ), //hello again
            const Text(
              'Hello Again!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome back , you\'we been missed!',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            //email textfield
            CustomTextField(
              controller: emailController,
              hintText: 'Email',
              autoFocus: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: emailController,
              hintText: 'Password',
            ),

            //sign in button

            //not a member? register now
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.autoFocus = false,
    required this.controller,
  });

  final String hintText;
  final bool autoFocus;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            autofocus: autoFocus,
            controller: controller,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText),
          ),
        ),
      ),
    );
  }
}
