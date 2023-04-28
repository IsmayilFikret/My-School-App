import 'package:flutter/material.dart';

import 'constants/theme.dart';
import 'pages/sign_in_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.lightTheme,
      home: const SignInPage(),
    );
  }
}
