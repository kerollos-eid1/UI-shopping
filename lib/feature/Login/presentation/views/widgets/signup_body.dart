import 'package:flutter/material.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text_feild.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomText(text: 'Create an \n account'),
          ),

          CustomTextFeild(
            hintText: 'Username or password',
            prefixIcon: Icons.person,
          ),
          CustomTextFeild(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            isPassword: true,
            obscureText: _obscurePassword,
            onSuffixTap: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          CustomTextFeild(
            hintText: 'ConfirmPassword',
            prefixIcon: Icons.lock,
            isPassword: true,
            obscureText: _obscurePassword,
            onSuffixTap: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          Text(
            'By clicking the Register button, you agree to\n the public offer',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
