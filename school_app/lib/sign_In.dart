import 'package:flutter/material.dart';

import 'package:school_app/register.dart';
import 'package:school_app/text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController repasswordController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('MEKTEBLER'),
      ),
      backgroundColor: const Color.fromARGB(255, 218, 213, 213),
      body: SingleChildScrollView(
        child: Form(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBoxWidget(
                  value: 50,
                ),
                const Icon(
                  Icons.school,
                  size: 100,
                ),
                const SizedBoxWidget(
                  value: 75,
                ),
                const Text(
                  'Xoş gəldiniz!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                const SizedBoxWidget(
                  value: 10,
                ),
                const Text(
                  'Zəhmət olmasa giriş edin !',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
                const SizedBoxWidget(
                  value: 50,
                ),
                //email textfield
                CustomTextField(
                  inputype: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Email',
                  autoFocus: true,
                ),
                const SizedBoxWidget(
                  value: 15,
                ),
                CustomTextField(
                  obscureText: obscureText,
                  icon: obscureText == true
                      ? Icons.visibility_off
                      : Icons.visibility,
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
                const SizedBoxWidget(
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
                const SizedBoxWidget(
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
                            builder: (context) => const RegisterPage(),
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
        ),
      ),
    );
  }
}
