import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app/register.dart';
import 'package:school_app/text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('MEKTEBLER'),
      ),
      backgroundColor: Color.fromARGB(255, 218, 213, 213),
      body: const _Body(),
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
            SizedBoxWidget(
              value: 50,
            ),
            const Icon(
              Icons.school,
              size: 100,
            ),
            SizedBoxWidget(
              value: 75,
            ),
            const Text(
              'Xoş gəldiniz!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            SizedBoxWidget(
              value: 10,
            ),
            const Text(
              'Zəhmət olmasa giriş edin !',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            SizedBoxWidget(
              value: 50,
            ),
            //email textfield
            CustomTextField(
              inputype: TextInputType.emailAddress,
              controller: emailController,
              hintText: 'Email',
              autoFocus: true,
            ),
            SizedBoxWidget(
              value: 15,
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
            SizedBoxWidget(
              value: 20,
            ),
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
            SizedBoxWidget(
              value: 25,
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
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
