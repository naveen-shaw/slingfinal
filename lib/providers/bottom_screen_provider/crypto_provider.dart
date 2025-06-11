import 'package:mpay/config.dart';

class CryptoProvider extends ChangeNotifier {
  List myPortfolio = [];
  List cryptoList = [];
  List buyAndSellHistory = [];
  List hireAssistance = [];
  List candleChartButton = [];
  List <CandleData> candleDataList = [
    CandleData('8:00', 60, 65, 45, 50, 5),
    CandleData('9:00', 38, 58, 32, 52, 5),
    CandleData('10:00', 30, 55, 25, 50, 5),
    CandleData('11:00', 60, 65, 45, 50, 5),
    CandleData('13:00', 50, 65, 45, 60, 5),
    CandleData('14:00', 30, 52, 25, 45, 5),
    CandleData('15:00', 70, 75, 40, 45, 5),
    CandleData('16:00', 30, 25, 55, 50, 5),
    CandleData('17:00', 60, 65, 45, 50, 5),
    CandleData('18:00', 20, 35, 15, 30, 5),
    CandleData('19:00', 65, 70, 45, 50, 5),
    CandleData('20:00', 55, 34, 60, 40, 5),
    CandleData('21:00', 35, 50, 30, 45, 5),
    CandleData('22:00', 20, 45, 15, 40, 5),
    CandleData('23:00', 35, 55, 25, 45, 5),
    CandleData('24:00', 60, 85, 55, 80, 5),
    CandleData('1:00', 40, 65, 35, 60, 5),
  ];
dynamic selectedIndex = 1;
  init() {
    myPortfolio = appArray.myPortfolio;
    cryptoList = appArray.cryptoList;
    buyAndSellHistory = appArray.buyAndSellHistory;
    hireAssistance = appArray.hireAssistance;
    candleChartButton = appArray.candleChartButton;
    notifyListeners();
  }


//crypto screen list send, request,withdraw, exchange on Tap
  cryptoListOnTap(context, int index) {
    switch (index) {
      case 0:
        route.pushNamed(context, routeName.cryptoSendScreen);
        break;
      case 1:
        route.pushNamed(context, routeName.cryptoRequestScreen);
        break;
      case 2:
        route.pushNamed(context, routeName.cryptoWithdrawScreen);
        break;
      case 3:
        route.pushNamed(context, routeName.cryptoExchangeScreen);
        break;
    }
  }
  //candle month list tap change
  candleOnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

}
