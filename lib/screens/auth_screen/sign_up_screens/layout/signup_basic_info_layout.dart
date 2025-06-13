import 'package:flutter/material.dart';
import '../../../../../config.dart';

class SignupBasicInfoLayout extends StatelessWidget {
  const SignupBasicInfoLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title Dropdown
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Title',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          items: ['Mr', 'Mrs', 'Ms', 'Dr'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15, top: Sizes.s20),

        // First Name
        TextFormField(
          decoration: InputDecoration(
            labelText: 'First Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s15),

        // Middle Name
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Middle Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s15),

        // Last Name
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Last Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s15),

        // Mobile Number with Country Code
        Row(
          children: [
            // Country Code Dropdown
            Container(
              width: 100,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Code',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
                  ),
                  filled: true,
                  fillColor: appColor(context).appTheme.screenBg,
                  labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
                ),
                items: ['91', '44', '1'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('+$value', style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(width: Sizes.s10),
            // Mobile Number
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
                  ),
                  filled: true,
                  fillColor: appColor(context).appTheme.screenBg,
                  labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
                ),
                style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
                keyboardType: TextInputType.phone,
              ),
            ),
          ],
        ).paddingOnly(bottom: Sizes.s15),

        // Gender Dropdown
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Gender',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          items: ['MALE', 'FEMALE', 'OTHER'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15),

        // Marital Status
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Marital Status',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          items: ['SINGLE', 'MARRIED', 'DIVORCED', 'WIDOWED'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15),

        // Employment Type
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Employment Type',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          items: ['EMPLOYED', 'SELF_EMPLOYED', 'BUSINESS', 'STUDENT', 'RETIRED'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value.replaceAll('_', ' '), style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15),

        // Employment Industry
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Employment Industry',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.gray, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor(context).appTheme.primary, width: 2),
            ),
            filled: true,
            fillColor: appColor(context).appTheme.screenBg,
            labelStyle: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
          ),
          items: [
            'INFORMATION_TECHNOLOGY',
            'BANKING',
            'HEALTHCARE',
            'EDUCATION',
            'MANUFACTURING',
            'RETAIL',
            'OTHER'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value.replaceAll('_', ' '), style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15),
      ],
    ).padding(horizontal: Sizes.s20);
  }
} 