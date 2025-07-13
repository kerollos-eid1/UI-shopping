
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: 'username or email',
              contentPadding: EdgeInsets.all(13),
              prefixIcon: Icon(FontAwesomeIcons.user, size: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: 'Password',
              contentPadding: EdgeInsets.all(13),
              prefixIcon: Icon(FontAwesomeIcons.lock, size: 20),
              suffixIcon: Icon(FontAwesomeIcons.eye),
            ),
          ),
        ),
      ],
    );
  }
}
