import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.username,
    this.password,
    required this.buttonTitle,
    required this.onTap,
  });

  final String? username;
  final String? password;
  final String buttonTitle;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 25.horizontalP,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: 30.borderRadius),
          child: Center(
            child: Text(
              buttonTitle,
              style:
                  const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
