import 'package:flutter/material.dart';

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 158, 7),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('MEKTEBLER'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 251),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mektebler.length,
                itemBuilder: (context, index) => Card(
                  color: const Color.fromARGB(255, 245, 190, 126),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      mektebler[index].keys.first.toString(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SchoolInfo {
  static const List<Map<String, dynamic>> mektebler = [
    {
      '34 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '45 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      }
    },
    {
      '73 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '212 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '193 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '178 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '93 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '36 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '47 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '258 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '202 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '207 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '11 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '177 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
    {
      '291 sayli mekteb': {
        'direktor': 'ismayil',
        'zavxoz': 'ismayil',
      },
    },
  ];
}
