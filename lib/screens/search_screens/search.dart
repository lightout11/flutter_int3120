import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: TextFormField(
        decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.grey.shade400),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
