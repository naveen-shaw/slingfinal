import 'package:flutter/material.dart';
import '../../../../../config.dart';

class NRIStatusLayout extends StatelessWidget {
  const NRIStatusLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Additional Information',
          style: AppCss.latoBold18.textColor(appColor(context).appTheme.darkText),
        ).paddingOnly(bottom: Sizes.s10),
        
        // NRI Status
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
              activeColor: appColor(context).appTheme.primary,
            ),
            Text(
              'I am an NRI Customer',
              style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
            ),
          ],
        ).paddingOnly(bottom: Sizes.s10),

        // Minor Status
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
              activeColor: appColor(context).appTheme.primary,
            ),
            Text(
              'I am a Minor',
              style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
            ),
          ],
        ).paddingOnly(bottom: Sizes.s10),

        // Dependant Status
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
              activeColor: appColor(context).appTheme.primary,
            ),
            Text(
              'I am a Dependant',
              style: AppCss.latoMedium16.textColor(appColor(context).appTheme.darkText),
            ),
          ],
        ),
      ],
    ).padding(horizontal: Sizes.s20, bottom: Sizes.s20);
  }
} 