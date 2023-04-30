import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../global/custom_button.dart';
import '../global/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
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
            const SizedBoxWidget(value: 10),
            const Text(
              RegisterStrings.xanaDoldurma,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            _sizedBoxH(50),

            //username textfield
            CustomTextField(
              autoFocus: true,
              hintText: 'Username',
              controller: usernameController,
            ),
            _sizedBoxH(20),

            //email textfield

            CustomTextField(
              inputype: TextInputType.emailAddress,
              controller: emailController,
              hintText: 'Email',
            ),
            _sizedBoxH(20),

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
            _sizedBoxH(20),

            //repassword textfield
            CustomTextField(
              hintText: 'Repassword',
              controller: repasswordController,
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
            ),
            _sizedBoxH(20),

            //sign in button
            CustomButton(buttonTitle: "Sign In", onTap: () {}),

            _sizedBoxH(20),

            //not a member? register now
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBoxH(double value) {
    return SizedBox(
      height: value,
    );
  }

  AppBar _appbar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      title: const Text('MEKTEBLER'),
    );
  }
}

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({
    super.key,
    required this.value,
  });
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
