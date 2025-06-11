import '../../../../../config.dart';

class PIDropDownLayout extends StatefulWidget {
  const PIDropDownLayout({super.key});

//personal identity drop down layout
  @override
  State<PIDropDownLayout> createState() => _PIDropDownLayoutState();
}

class _PIDropDownLayoutState extends State<PIDropDownLayout> {


  @override
  Widget build(BuildContext context) {
    var homeCtrl = Provider.of<HomeScreenProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: appFonts.gender,
        ).paddingSymmetric(vertical: Sizes.s10),
        CommonDropDownMenu(value:homeCtrl.gender,onChanged: (value) => homeCtrl.genderChange(value),
            hintText: appFonts.gender,
            itemsList:homeCtrl.piDropDownItems
                .map((item) => DropdownMenuItem<dynamic>(
                      value: item['value'],
                      child: TextWidgetCommon(text:item['label']),
                    ))
                .toList()),
      ],
    );
  }
}
