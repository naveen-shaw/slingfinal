import 'package:flutter/material.dart';
import '../../../../../config.dart';

class KYCInfoLayout extends StatelessWidget {
  const KYCInfoLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'KYC Information',
          style: AppCss.latoBold18.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s10),
        
        // Document Type
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Document Type',
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
          items: ['PAN', 'AADHAR', 'PASSPORT', 'DRIVING_LICENSE'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText)),
            );
          }).toList(),
          onChanged: (value) {},
        ).paddingOnly(bottom: Sizes.s15),

        // Document Number
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Document Number',
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

        // Document Expiry Date
        InkWell(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
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
                  'Document Expiry Date',
                  style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
                ),
                Icon(Icons.calendar_today, color: appColor(context).appTheme.darkText),
              ],
            ),
          ),
        ).paddingOnly(bottom: Sizes.s30),

        // Next Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Handle next button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: appColor(context).appTheme.primary,
              padding: EdgeInsets.symmetric(vertical: Sizes.s15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Next',
              style: AppCss.latoBold16.textColor(Colors.white),
            ),
          ),
        ),
      ],
    ).padding(horizontal: Sizes.s20);
  }
} 