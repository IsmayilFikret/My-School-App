import 'package:flutter/material.dart';
import 'package:school_app/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('MEKTEBLER'),
      ),
      backgroundColor: const Color.fromARGB(255, 218, 213, 213),
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
            const SizedBoxWidget(
              value: 50,
            ),

            const Icon(
              Icons.school,
              size: 100,
            ),
            const SizedBoxWidget(value: 75),
            const Text(
              'Xoş gəldiniz!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            const SizedBoxWidget(value: 10),
            const Text(
              'Giriş etmək üçün xanaları doldurun!',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            const SizedBoxWidget(value: 50),
            //username textfield
            CustomTextField(
              autoFocus: true,
              hintText: 'Username',
              controller: usernameController,
            ),
            const SizedBoxWidget(value: 15),

            //email textfield

            CustomTextField(
              inputype: TextInputType.emailAddress,
              controller: emailController,
              hintText: 'Email',
              autoFocus: false,
            ),
            const SizedBoxWidget(value: 15),
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
            const SizedBoxWidget(value: 15),
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
            const SizedBoxWidget(value: 20),
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
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBoxWidget(value: 25),
            //not a member? register now
          ],
        ),
      ),
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
