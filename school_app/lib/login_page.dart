import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            //hello again
            Text(
              'Hello Again!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome back , you\'we been missed!',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            //email textfield
            CustomTextField(),
            //password textfield

            //sign in button

            //not a member? register now
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Email'),
          ),
        ),
      ),
    );
  }
}
