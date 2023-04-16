import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController controller = TextEditingController();

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
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppBar(
          title: Text('MEKTEBLER'),
        ),
      ),
      appBar: AppBar(
        title: Text('MEKTEBLER'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mektebler.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    mektebler[index].keys.toString(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
