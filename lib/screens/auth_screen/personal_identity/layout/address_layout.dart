import 'package:flutter/material.dart';
import '../../../../../config.dart';

class AddressLayout extends StatelessWidget {
  final String title;
  final String addressCategory;

  const AddressLayout({
    Key? key,
    required this.title,
    required this.addressCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppCss.latoBold18.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s10),
        
        // Address Line 1
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Address Line 1',
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
        ).paddingOnly(bottom: Sizes.s10),

        // Address Line 2
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Address Line 2',
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
        ).paddingOnly(bottom: Sizes.s10),

        // Address Line 3
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Address Line 3',
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
        ).paddingOnly(bottom: Sizes.s10),

        // City
        TextFormField(
          decoration: InputDecoration(
            labelText: 'City',
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
        ).paddingOnly(bottom: Sizes.s10),

        // State
        TextFormField(
          decoration: InputDecoration(
            labelText: 'State',
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
        ).paddingOnly(bottom: Sizes.s10),

        // Country
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Country',
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
        ).paddingOnly(bottom: Sizes.s10),

        // PIN Code
        TextFormField(
          decoration: InputDecoration(
            labelText: 'PIN Code',
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
          keyboardType: TextInputType.number,
        ).paddingOnly(bottom: Sizes.s20),
      ],
    ).padding(horizontal: Sizes.s20);
  }
} 