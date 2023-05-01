import 'package:flutter/material.dart';
import 'package:school_apps_04/pages/home_page.dart';
import 'package:school_apps_04/pages/register_page.dart';

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
      home: const MyHomePage(),
    );
  }
}
