import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_apps_04/pages/home_page.dart';
import 'package:school_apps_04/pages/register_page.dart';

class MektebInfoScreen extends StatelessWidget {
  final Map<String, dynamic> mekteb;

  const MektebInfoScreen({required this.mekteb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mekteb.keys.first),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: SchoolInfo.mektebler.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    SchoolInfo.mektebler[index].keys.last.toString(),
                  ),
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
              );
            },
          ),
        ),
      ),
    );
  }
}

// enum ImagePathEnum {
//   mekteb34,
//   mekteb36,
//   mekteb45,
//   mekteb47,
//   mekteb73,
//   mekteb93,
//   mekteb177,
//   mekteb178,
//   mekteb193,
//   mekteb202,
//   mekteb207,
//   mekteb212,
//   mekteb258,
//   mekteb291,
// }

// extension ImagePathEnumExtension on ImagePathEnum {
//   String toImagePath() {
//     return 'assets/images/im_$name.png';
//   }

//   Widget toImage() {
//     return Image.asset(
//       toImagePath(),
//       fit: BoxFit.cover,
//     );
//   }
// }
