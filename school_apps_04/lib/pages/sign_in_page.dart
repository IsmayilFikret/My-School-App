import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../global/custom_button.dart';
import 'home_page.dart';
import 'register_page.dart';
import '../global/custom_text_field.dart';

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
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(context),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: const Text('MEKTEBLER'),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _sizedBoxH(50),
              const Icon(
                Icons.school,
                size: 100,
              ),
              _sizedBoxH(50),

              const Text(
                'Xoş gəldiniz!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              _sizedBoxH(10),

              const Text(
                'Zəhmət olmasa giriş edin !',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
              ),
              _sizedBoxH(50),

              //email textfield
              CustomTextField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                inputype: TextInputType.emailAddress,
                controller: emailController,
                hintText: 'Email',
                autoFocus: true,
              ),
              _sizedBoxH(15),

              CustomTextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: obscureText,
                icon: obscureText == true ? Icons.visibility_off : Icons.visibility,
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
              _sizedBoxH(20),

              //sign in button
              CustomButton(
                username: username,
                password: password,
                buttonTitle: "Sign In",
                onTap: username == 'admin' && password == 'admin'
                    ? () {
                        context.navigateToPage(const MyHomePage());
                      }
                    : null,
              ),
              _sizedBoxH(25),

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
                      context.navigateToPage(const RegisterPage());
                    },
                    child: const Text(
                      '   Register now',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBoxH(double value) {
    return SizedBox(
      height: value,
    );
  }
}
