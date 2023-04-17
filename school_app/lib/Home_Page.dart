import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> mektebler = [
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('MEKTEBLER'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mektebler.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(mektebler[index].keys.first.toString()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
