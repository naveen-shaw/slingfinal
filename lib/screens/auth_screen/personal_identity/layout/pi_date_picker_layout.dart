
import '../../../../../config.dart';

class PIDatePickerLayout extends StatefulWidget {
  const PIDatePickerLayout({super.key});
//personal identity date picker layout
  @override
  State<PIDatePickerLayout> createState() => _PIDatePickerLayoutState();
}

class _PIDatePickerLayoutState extends State<PIDatePickerLayout> {
  int selectedDay = 14;
  int selectedMonth = 10;
  int selectedYear = 1993;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: appFonts.dateOfBirth,
        ).paddingOnly(bottom: Sizes.s10),
        DropdownDatePicker(
            dayFlex: 2,
            boxDecoration: BoxDecoration(
                color: appColor(context).appTheme.gray.withOpacity(0.1),borderRadius: SmoothBorderRadius(cornerRadius: AppRadius.r5)),
            isExpanded: true,
            monthFlex: 3,
            yearFlex: 2,
            width: Sizes.s8,
            dateformatorder: OrderFormat.DMY,
            isDropdownHideUnderline: true,
            isFormValidator: true,
            startYear: 1900,
            endYear: 2020,
            selectedDay: selectedDay,
            selectedMonth: selectedMonth,
            selectedYear: selectedYear,
            onChangedDay: (value) {
              selectedDay = int.parse(value!);
            },
            onChangedMonth: (value) {
              selectedMonth = int.parse(value!);
            },
            onChangedYear: (value) {
              selectedYear = int.parse(value!);
            },inputDecoration: const InputDecoration(border: InputBorder.none),

            hintDay: 'Day',hintTextStyle: TextStyle(color: appColor(context).appTheme.darkText), // optional
            hintMonth: 'Month', // optional
            hintYear: 'Year', // optional
          textStyle: TextStyle(color: appColor(context).appTheme.darkText),
            )
      ],
    );
  }
}
