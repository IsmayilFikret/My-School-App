import 'package:flutter/material.dart';

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
    this.validator,
    this.onChanged,
  });
  final String? Function(String?)? validator;
  final String hintText;
  final bool? autoFocus;
  final TextEditingController controller;
  final bool obscureText;
  final Function(String value)? onChanged;
  final IconData? icon;
  final VoidCallback? onPress;
  final TextInputType? inputype;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            onChanged: onChanged,
            validator: validator,
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
