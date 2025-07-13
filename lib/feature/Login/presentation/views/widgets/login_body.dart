import 'package:flutter/material.dart';
import 'package:ui_shop/core/utils/asset_photo.dart';
import 'package:ui_shop/core/utils/style.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/custom_contanier.dart';
import 'package:ui_shop/feature/Login/presentation/views/widgets/custom_text_feild.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('Welcome\n Back!', style: Styles.textStyles36),
          ),
          const CustomTextFeild(),
          Row(
            children: [
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.redAccent, fontSize: 12),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),
          CustomContainer(),
          iconcontact(),
        ],
      ),
    );
  }
}

class iconcontact extends StatelessWidget {
  const iconcontact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(AssetPhoto.GoodleSignIn)],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create An Acount\t'),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Color(0xffF83758), fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
