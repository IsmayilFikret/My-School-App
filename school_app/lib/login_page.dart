import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 213, 213),
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController repasswordController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Icon(
              Icons.school,
              size: 100,
            ),
            const SizedBox(
              height: 75,
            ),
            const Text(
              'Xoş gəldiniz!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Zəhmət olmasa giriş edin !',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            //email textfield
            CustomTextField(
              inputype: TextInputType.emailAddress,
              controller: emailController,
              hintText: 'Email',
              autoFocus: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              obscureText: true,
              icon:
                  obscureText == true ? Icons.visibility_off : Icons.visibility,
              onPress: () {
                setState(
                  () {
                    obscureText = !obscureText;
                  },
                );
              },
              //obscureText: true,
              controller: passwordController,
              hintText: 'Password',
            ),
            const SizedBox(height: 20),
            //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not a member ? ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    '   Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
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
    this.obscureText = false,
    this.icon,
    this.onPress,
    this.inputype = TextInputType.multiline,
  });

  final String hintText;
  final bool? autoFocus;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? icon;
  final VoidCallback? onPress;
  final TextInputType? inputype;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            keyboardType: inputype,
            obscureText: obscureText,
            autofocus: autoFocus ?? false,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              suffixIcon: IconButton(
                icon: Icon(icon),
                onPressed: onPress,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
