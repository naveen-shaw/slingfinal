import 'package:mpay/config.dart';

class CryptoCoinDetailsProvider extends ChangeNotifier {
  List bitcoinsAmount = [];
  List staticsList = [];
  List coinBuySellHistory = [];
  List coinBitcoinUpdate = [];
  List monthsDate = [];
  List months = [];
  int? selectedIndex = 3  ;
  dynamic cryptoDrop ;
  List chartData = [
    LineChartData(DateTime(2022, 3, 22), 60, 0),
    LineChartData(DateTime(2022, 3, 23), 40, 0),
    LineChartData(DateTime(2022, 3, 24), 50, 0),
    LineChartData(DateTime(2022, 3, 25), 60, 0),
    LineChartData(DateTime(2022, 3, 26), 53, 0),
    LineChartData(DateTime(2022, 3, 27), 35, 0),
    LineChartData(DateTime(2022, 3, 28), 54, 0),
    LineChartData(DateTime(2022, 3, 29), 40, 0),
    LineChartData(DateTime(2022, 3, 30), 55, 0),
    LineChartData(DateTime(2022, 3, 31), 60, 0),
    LineChartData(DateTime(2022, 3, 32), 35, 0),
    LineChartData(DateTime(2022, 3, 33), 50, 0),
    LineChartData(DateTime(2022, 3, 34), 40, 0),
    LineChartData(DateTime(2022, 3, 35), 42, 0),
    LineChartData(DateTime(2022, 3, 36), 41, 0),
    LineChartData(DateTime(2022, 3, 37), 35, 0),
    LineChartData(DateTime(2022, 3, 38), 50, 0),
  ];

//List initialization
  init() {
    bitcoinsAmount = appArray.bitcoinsAmount;
    staticsList = appArray.staticsList;
    coinBuySellHistory = appArray.coinBuySellHistory;
    coinBitcoinUpdate = appArray.coinBitcoinUpdate;
    monthsDate = appArray.monthsDate;
    months = appArray.months;
    cryptoDrop= coinDetailsDropDownItems[1]['value'];
    notifyListeners();
  }
  //
  // //crypto screen send Amount dropDown layout
  // List coinDetailsDropDownItems = [
  //   {'value': 1, 'label': 'Seema Williams'},
  //   {'value': 2, 'label': 'Higain Williams'},
  //   {'value': 3, 'label': 'Survana Williams'},
  // ];
  //crypto screen send Amount dropDown layout
  List coinDetailsDropDownItems = [
    {'value': 1, 'label': 'Bitcoin - BTC'},
    {'value': 2, 'label': 'Ethereum - ETH'},
    {'value': 3, 'label': 'Dogecoin - DOG'},
    {'value': 4, 'label': 'Tether - USDT'},
  ];

  startMonthOnChange(newValue){

    cryptoDrop = newValue;
    notifyListeners();
  }
  //LineBar month list tap change
  monthOnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
