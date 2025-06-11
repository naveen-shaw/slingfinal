import '../../config.dart';

class TransactionHistoryProvider extends ChangeNotifier {
  bool thLayout = false;
  List thLayoutList = [];
  List transactionHistory = [];
  List amazonBillDetail = [];
  TextEditingController selectDate = TextEditingController();
  TextEditingController toDate = TextEditingController();
  DateTime date = DateTime(1900);

  // Initialize list
  init() {
    transactionHistory = appArray.transactionHistory;
    thLayoutList = appArray.thLayout;
    amazonBillDetail = appArray.amazonBillDetail;

    notifyListeners();
  }

  //Transaction History tap false
  thOnTapFalse() {
    thLayout = false;
    notifyListeners();
  }

//Transaction History tap true
  thOnTapTrue() {
    thLayout = true;
    notifyListeners();
  }

  //date picker layout
  dateOnTap(context) async {
    date = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                    onPrimary: appColor(context).appTheme.white),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        backgroundColor: appColor(context)
                            .appTheme
                            .primary
                            .withOpacity(0.5), // button text color
                        textStyle: TextStyle(
                            color: appColor(context).appTheme.white)))),
            child: child!,
          );
        }))!;
    selectDate.text = date.toIso8601String();
    notifyListeners();
  }

  //date picker layout
  toDateOnTap(context) async {
    date = (await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                    onPrimary: appColor(context).appTheme.white),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        backgroundColor: appColor(context)
                            .appTheme
                            .primary
                            .withOpacity(0.5), // button text color
                        textStyle: TextStyle(
                            color: appColor(context).appTheme.white)))),
            child: child!,
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)))!;
    toDate.text = date.toIso8601String();
    notifyListeners();
  }
}
