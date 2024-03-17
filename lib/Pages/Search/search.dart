import 'package:flutter/cupertino.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(navigationBar: const CupertinoNavigationBar(middle: Text('Search')), child:SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoSearchTextField(
              controller: _searchController,
              // suffixIcon: const Icon(CupertinoIcons.delete_simple),
            ),
          )
        ],
      ),
    ));
  }
}