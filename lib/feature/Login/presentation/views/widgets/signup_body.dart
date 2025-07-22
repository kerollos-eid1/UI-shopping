import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_shop/core/utils/App_router.dart';
import 'package:ui_shop/core/utils/style.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text_feild.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/contact_me.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/custom_contanier.dart';
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
            child: CustomText(
              text: 'Create an \n account',
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextFeild(
            hintText: 'Username or Email',
            prefixIcon: Icons.person,
          ),
          CustomTextFeild(
            hintText: 'Username or Email',
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
            hintText: 'Username or Email',
            prefixIcon: Icons.lock,
            isPassword: true,
            obscureText: _obscurePassword,
            onSuffixTap: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          const Text(
            'By clicking the Register button, you agree to\n the public offer',
            style: TextStyle(color: Colors.grey),
          ),
          const CustomContainer(text: 'Create Account'),
          ContactMe(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'I Already Have an Account',
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLoginPage);
                },
                child: Text(
                  'Login',
                  style: Styles.textStyles12.copyWith(
                    color: const Color.fromARGB(255, 230, 95, 85),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
