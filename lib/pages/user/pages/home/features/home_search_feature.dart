import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

const suggestions = [
  {"name": "India", "flag": "https://www.countryflags.io/in/flat/64.png"},
  {"name": "USA", "flag": "https://www.countryflags.io/us/flat/64.png"},
  {"name": "UK", "flag": "https://www.countryflags.io/gb/flat/64.png"}
];

class HomeSearchFeature extends StatelessWidget {
  const HomeSearchFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField(
      hint: "Search",
      searchStyle: const TextStyle(fontSize: 20),
      searchInputDecoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black45),
        ),
        hintText: "Search",
        hintStyle: const TextStyle(fontSize: 20),
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      itemHeight: 50,
      suggestions: suggestions
          .map(
            (e) => SearchFieldListItem(
              e["name"]!,
              item: e,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(e["flag"]!),
                    ),
                    const SizedBox(width: 10),
                    Text(e["name"]!, style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
