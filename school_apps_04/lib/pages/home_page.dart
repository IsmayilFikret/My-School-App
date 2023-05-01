import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'mekteb_info_screen.dart';
import 'sign_in_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> mektebler = SchoolInfo.mektebler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: SchoolInfo.mektebler.length,
              itemBuilder: (context, index) => Card(
                color: Colors.white,
                child: ListTile(
                  leading: const Icon(Icons.school),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MektebInfoScreen(
                          mekteb: mektebler[index],
                        ),
                      ),
                    );
                  },
                  title: Text(
                    mektebler[index].keys.first.toString(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const SignInPage(),
            ));
          },
          icon: const Icon(Icons.login),
        ),
      ],
      title: const Text(' MEKTEBLER '),
    );
  }
}

class SchoolInfo {
  static const List<Map<String, dynamic>> mektebler = [
    {
      '34 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb34.png'
      },
    },
    {
      '45 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb45.png',
      }
    },
    {
      '73 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb73.png'
      },
    },
    {
      '212 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb212.png'
      },
    },
    {
      '193 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb193.png'
      },
    },
    {
      '178 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb178.png'
      },
    },
    {
      '93 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb93.png'
      },
    },
    {
      '36 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb36.png'
      },
    },
    {
      '47 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb47.png'
      },
    },
    {
      '258 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb258.png'
      },
    },
    {
      '202 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb202.png'
      },
    },
    {
      '207 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb207.png'
      },
    },
    {
      '11 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb11.png'
      },
    },
    {
      '177 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb177.png'
      },
    },
    {
      '291 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
        'image': 'assets/images/mekteb291.png'
      },
    },
  ];
}
