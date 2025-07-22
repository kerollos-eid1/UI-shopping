import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '- OR Continue with -',
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(255, 119, 112, 112),
          ),
        ),
        Container(
          height: 100,
          width: 370,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.google, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color.fromARGB(255, 27, 80, 123),
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.apple, size: 30),

                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
