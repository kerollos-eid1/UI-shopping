import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        onChanged: (data) {},
        onSubmitted: (data) {},
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 241, 239, 239),
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 219, 211, 211),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.microphone, color: Colors.grey),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.grey),
          ),
          hintText: 'search any product..',
          hintStyle: TextStyle(color: Colors.grey),
          counterStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
