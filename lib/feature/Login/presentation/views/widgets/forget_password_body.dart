import 'package:flutter/material.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text_feild.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/custom_contanier.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomText(
              text: 'Forgot \nPassword?',
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextFeild(
            hintText: 'Enter your email address',
            prefixIcon: Icons.mail,
          ),
          Text(
            '* We will send you a message to set or reset\n your new password',
            style: TextStyle(color: Colors.grey),
          ),
          CustomContainer(text: 'Submit'),
        ],
      ),
    );
  }
}
