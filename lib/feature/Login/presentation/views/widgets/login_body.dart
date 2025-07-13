import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_shop/core/utils/style.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            'Welcome\n Back!',
            style: Styles.textStyles36.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        CustomTextFeild(),
      ],
    );
  }
}

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
              border: OutlineInputBorder(),
              hintText: 'username or email',
              contentPadding: EdgeInsets.all(18),
              prefixIcon: Icon(FontAwesomeIcons.user, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
