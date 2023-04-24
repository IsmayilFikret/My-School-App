import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('MEKTEBLER'),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('MEKTEBLER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              CustomTextField(
                validator: null,
                controller: usernameController,
                hintText: 'username',
              ),
              CustomTextField(
                inputType: TextInputType.emailAddress,
                validator: (value) => (value?.isValidEmail ?? false)
                    ? null
                    : 'Please write email',
                hintText: "email adrees",
                controller: emailController,
              ),
              CustomTextField(
                icon: obscureText ? Icons.visibility_off : Icons.visibility,
                onPress: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                obscureText: obscureText,
                inputType: TextInputType.number,
                validator: (value) => (value?.isValidPassword ?? false)
                    ? null
                    : 'Please write password',
                controller: passwordController,
                hintText: 'password',
              ),
              CustomTextField(
                obscureText: true,
                inputType: TextInputType.number,
                validator: null,
                textInputAction: TextInputAction.done,
                hintText: 'repeat password',
                controller: repasswordController,
              )
            ],
          ),
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
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.inputType = TextInputType.multiline,
    this.obscureText,
    this.onPress,
    this.icon,
  });

  final String hintText;
  final bool? autoFocus;
  final bool? obscureText;

  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final IconData? icon;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: inputType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPress,
          icon: Icon(icon),
        ),
        hintText: hintText,
      ),
      textInputAction: textInputAction,
      autofocus: autoFocus ?? false,
      onChanged: (value) {},
    );
  }
}
