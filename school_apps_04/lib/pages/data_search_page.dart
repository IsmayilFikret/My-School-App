import 'package:flutter/material.dart';
import 'package:school_apps_04/pages/home_page.dart';

class DataSearch extends SearchDelegate<String> {
  List<String> filteredList = [];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredList[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    filteredList = query.isEmpty
        ? []
        : SchoolInfo.where((element) =>
            element.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredList[index]),
          onTap: () {
            query = filteredList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
