import 'package:flutter/material.dart';
import '../../../../../config.dart';

class SignupTermsLayout extends StatelessWidget {
  const SignupTermsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          activeColor: appColor(context).appTheme.primary,
        ),
        Expanded(
          child: Text(
            'I agree to all Terms & Conditions and Privacy Policy',
            style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
        ),
      ],
    ).padding(horizontal: Sizes.s20, bottom: Sizes.s20);
  }
} 