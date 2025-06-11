import 'package:mpay/config.dart';

class InsightProvider extends ChangeNotifier {
  List insightList = [];
  int? selectedIndex = 0;
  dynamic startMonth;
  dynamic endMonth;
  dynamic year;

  List<ChartColumnData> barChartData = [
    ChartColumnData('Mar', -40, 40),
    ChartColumnData('Apr', -60, 60),
    ChartColumnData('May', -90, 90),
    ChartColumnData('Jun', -60, 60),
    ChartColumnData('Jul', -40, 40),
  ];

  //Initialize list
  init() {
    insightList = appArray.insightList;
    notifyListeners();
  }

//chart Data list
  final List<ChartData> chartData = [
    ChartData('David', 25, const Color.fromRGBO(111, 231, 159, 1)),
    ChartData('Steve', 38, const Color.fromRGBO(255, 143, 63, 1)),
    ChartData('Jack', 34, const Color.fromRGBO(6, 191, 250, 1)),
    ChartData('Others', 52, const Color.fromRGBO(248, 224, 13, 1))
  ];
  var barList = ['W', 'M', 'Y'];

  //column Bar Chart month list tap change
  insightMonthOnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  //insight screen months dropDown layout
  List dialogDropDownItems = [
    {'value': 1, 'label': 'January'},
    {'value': 2, 'label': 'February'},
    {'value': 3, 'label': 'March'},
    {'value': 4, 'label': 'April'},
    {'value': 5, 'label': 'May'},
    {'value': 6, 'label': 'June'},
    {'value': 7, 'label': 'July'},
    {'value': 8, 'label': 'August'},
    {'value': 9, 'label': 'September'},
    {'value': 10, 'label': 'October'},
    {'value': 11, 'label': 'November'},
    {'value': 12, 'label': 'December'},
  ];

  //insight screen year dropDown layout
  List yearDialogDropDownItems = [
    {'value': 1, 'label': '2001'},
    {'value': 2, 'label': '2002'},
    {'value': 3, 'label': '2003'},
    {'value': 4, 'label': '2004'},
    {'value': 5, 'label': '2005'},
    {'value': 6, 'label': '2006'},
    {'value': 7, 'label': '2007'},
    {'value': 8, 'label': '2008'},
    {'value': 9, 'label': '2009'},
    {'value': 10, 'label': '2010'},
    {'value': 11, 'label': '2011'},
    {'value': 12, 'label': '2012'},
    {'value': 13, 'label': '2013'},
    {'value': 14, 'label': '2014'},
  ];
  //startMonth on change value
  startMonthOnChange(newValue){
    startMonth = newValue;
    notifyListeners();
  }  //endMonth on change value
  endMonthOnChange(newValue){
    endMonth = newValue;
    notifyListeners();
  } //year on change value
  yearOnChange(newValue){
    year = newValue;
    notifyListeners();
  }
//insight screen customDialog layout
  customMonthDialog(context) {
    return commonDialog(context, false,
        text: appFonts.selectCustomMonth,
        children: [
          TextWidgetCommon(text: language(context, appFonts.startMonth)),
          CommonDropDownMenu(value: startMonth,onChanged: (value) => startMonthOnChange(value),
                  hintText: appFonts.startMonth,
                  itemsList: dialogDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: TextWidgetCommon(text: item['label'])))
                      .toList())
              .padding(top: Sizes.s8, bottom: Sizes.s20),
          TextWidgetCommon(text: appFonts.endMonth),
          CommonDropDownMenu(value: endMonth,onChanged: (value) => endMonthOnChange(value),
                  hintText: appFonts.endMonth,
                  itemsList: dialogDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: TextWidgetCommon(text: item['label'])))
                      .toList())
              .padding(top: Sizes.s8, bottom: Sizes.s20),
          TextWidgetCommon(text: appFonts.endMonth),
          CommonDropDownMenu(value: year,onChanged: (value) => yearOnChange(value),
                  hintText: appFonts.year,
                  itemsList: yearDialogDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: TextWidgetCommon(text: item['label'])))
                      .toList())
              .padding(top: Sizes.s8, bottom: Sizes.s30),
          CommonAuthButton(text: appFonts.viewDetails,onTap: () =>route.pop(context))
        ]);
  }
}
