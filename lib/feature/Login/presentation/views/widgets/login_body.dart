import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_shop/core/utils/App_router.dart';
import 'package:ui_shop/core/utils/style.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text.dart';
import 'package:ui_shop/feature/Login/presentation/view_model/custom_text_feild.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/contact_me.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/custom_contanier.dart';

// ignore: must_be_immutable
class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
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
              text: 'Welcome\n Back!',
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kForgetPassword);
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.redAccent, fontSize: 12),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),
          CustomContainer(text: 'Login'),
          ContactMe(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Create An Account',
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSignup);
                },
                child: Text(
                  'Sign Up',
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
