import 'package:flutter/material.dart';
import 'package:school_apps_04/pages/home_page.dart';

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: SchoolInfo.mektebler.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(SchoolInfo.mektebler.first[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    SchoolInfo.mektebler.first = query.isEmpty
        ? []
        : SchoolInfo.mektebler.first['']
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: SchoolInfo.mektebler.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(SchoolInfo.mektebler.first[index]),
          onTap: () {
            query = SchoolInfo.mektebler.first[index];
            showResults(context);
          },
        );
      },
    );
  }
}
