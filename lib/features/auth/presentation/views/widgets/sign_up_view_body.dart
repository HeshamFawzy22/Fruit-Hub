import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_coditions_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 24.0),
            CustomTextFormField(
              inputType: TextInputType.name,
              hintText: 'الاسم كامل',
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              inputType: TextInputType.emailAddress,
              hintText: 'البريد الالكتروني',
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              inputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xFFC9CECF),
              ),
            ),
            SizedBox(height: 16.0),
            TermsAndCoditionsWidget(),
            SizedBox(height: 30.0),
            CustomButton(text: 'إنشاء حساب جديد'),
            SizedBox(height: 26.0),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}

