import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            const CustomTextFormField(
              inputType: TextInputType.emailAddress,
              hintText: 'البريد الالكتروني',
            ),
            const SizedBox(height: 16.0),
            const CustomTextFormField(
              inputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xFFC9CECF),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33.0),
            CustomButton(text: 'تسجيل دخول', onPressed: () {}),
            const SizedBox(height: 33.0),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 33.0),
            const OrDividerWidget(),
            const SizedBox(height: 16.0),
            SocialLoginButtonWidget(title: 'تسجيل بواسطة جوجل', icon: Assets.imagesGoogleIcon, onPressed: () {},),
            const SizedBox(height: 16.0),
            SocialLoginButtonWidget(title: 'تسجيل بواسطة أبل', icon: Assets.imagesAppleIcon, onPressed: () {},),
            const SizedBox(height: 16.0),
            SocialLoginButtonWidget(title: 'تسجيل بواسطة فيسبوك', icon: Assets.imagesFacebookIcon, onPressed: () {},),
          ],
        ),
      ),
    );
  }
}

