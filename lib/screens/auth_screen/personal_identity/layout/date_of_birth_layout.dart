import 'package:flutter/material.dart';
import '../../../../../config.dart';

class DateOfBirthLayout extends StatelessWidget {
  const DateOfBirthLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date of Birth',
          style: AppCss.latoBold18.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s10),
        
        InkWell(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (picked != null) {
              // Handle date selection
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s15, vertical: Sizes.s12),
            decoration: BoxDecoration(
              border: Border.all(color: appColor(context).appTheme.gray, width: 1.5),
              borderRadius: BorderRadius.circular(4),
              color: appColor(context).appTheme.screenBg,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Date of Birth',
                  style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
                ),
                Icon(Icons.calendar_today, color: appColor(context).appTheme.darkText),
              ],
            ),
          ),
        ),
      ],
    ).padding(horizontal: Sizes.s20, bottom: Sizes.s20);
  }
} 