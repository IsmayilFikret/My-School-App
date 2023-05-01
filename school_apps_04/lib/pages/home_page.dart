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
        'direktor': 'Axundova Necibe , elaqe : 050 345 69 96',
        'zavxoz': 'Mehdiyev Ferman , elaqe : 051 306 87 50',
        'image': 'assets/images/im_mekteb34.png',
        'id': '12345'
      },
    },
    {
      '45 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'test , elaqe : ',
        'image': 'assets/images/im_mekteb45.png',
        'id': '12345'
      }
    },
    {
      '73 sayli mekteb': {
        'direktor': 'Hesenov Fizuli , elaqe : ',
        'zavxoz': 'Heyderov Ilham , elaqe : 055 522 42 33',
        'image': 'assets/images/im_mekteb73.png',
        'id': '12345'
      },
    },
    {
      '212 sayli mekteb': {
        'direktor': 'Rehimova Melahet , elaqe : ',
        'zavxoz': 'Seferov Qambay , elaqe : 050 536 15 45',
        'image': 'assets/images/im_mekteb212.png',
        'id': '12345'
      },
    },
    {
      '193 sayli mekteb': {
        'direktor': 'Haciyeva Nihal , elaqe : ',
        'zavxoz': 'Esgerov Ehliman  , elaqe : 055 890 44 85',
        'image': 'assets/images/im_mekteb193.png',
        'id': '12345'
      },
    },
    {
      '178 sayli mekteb': {
        'direktor': 'Hasilova Lalender  , elaqe : ',
        'zavxoz': 'Ehmedov Elcin  , elaqe : 050 625 02 99',
        'image': 'assets/images/im_mekteb178.png',
        'id': '12345'
      },
    },
    {
      '93 sayli mekteb': {
        'direktor': 'Ibrahimova Xalide  , elaqe : ',
        'zavxoz': 'Mahmudova Vesile , elaqe : 077 610 14 24',
        'image': 'assets/images/im_mekteb93.png',
        'id': '12345'
      },
    },
    {
      '36 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'test , elaqe : ',
        'image': 'assets/images/im_mekteb36.png',
        'id': '12345'
      },
    },
    {
      '47 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'test , elaqe : ',
        'image': 'assets/images/im_mekteb47.png',
        'id': '12345'
      },
    },
    {
      '258 sayli mekteb': {
        'direktor': 'Huseynova Sedaqet  , elaqe : ',
        'zavxoz': 'Qurbanov Ramil , elaqe : 050 270 08 08',
        'image': 'assets/images/im_mekteb258.png',
        'id': '12345'
      },
    },
    {
      '202 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'Nurmemmedov Bayram , elaqe : 050 353 35 56',
        'image': 'assets/images/im_mekteb202.png',
        'id': '12345'
      },
    },
    {
      '207 sayli mekteb': {
        'direktor': 'Seyidova Sedaqet , elaqe : ',
        'zavxoz': 'Ehmedova Nusabe  , elaqe : 055 721 41 37',
        'image': 'assets/images/im_mekteb207.png',
        'id': '12345'
      },
    },
    {
      '11 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'test , elaqe : ',
        'image': 'assets/images/im_mekteb11.png',
        'id': '12345'
      },
    },
    {
      '177 sayli mekteb': {
        'direktor': 'Suleymanova Arzu , elaqe : ',
        'zavxoz': 'Xelilova Xanim , elaqe : ',
        'image': 'assets/images/im_mekteb177.png',
        'id': '12345'
      },
    },
    {
      '291 sayli mekteb': {
        'direktor': 'test , elaqe : ',
        'zavxoz': 'test , elaqe : ',
        'image': 'assets/images/im_mekteb291.png',
        'id': '12345'
      },
    },
  ];
}
