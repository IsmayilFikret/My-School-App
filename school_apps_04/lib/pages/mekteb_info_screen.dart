import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:school_apps_04/pages/register_page.dart';

class MektebInfoScreen extends StatelessWidget {
  final Map<String, dynamic> mekteb;

  const MektebInfoScreen({super.key, required this.mekteb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mekteb.keys.first),
        actions: [
          Padding(
            padding: 8.allP,
            child: Center(
              child: Text(
                'ID : ${mekteb.values.first['id']}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(mekteb.values.first['image']),
            Text(
              'Direktor: ${mekteb.values.first['direktor']}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBoxWidget(value: 16),
            Text(
              'Zavxoz: ${mekteb.values.first['zavxoz']}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        )),
      ),
    );
  }
}
