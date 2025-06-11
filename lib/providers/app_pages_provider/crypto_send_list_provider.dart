import '../../config.dart';

class CryptoSendListProvider extends ChangeNotifier {
  dynamic youSend;
  dynamic youReceive;
  dynamic selectRecipientName;
  dynamic selectRecipientSecName;
  dynamic selectDigitalAsset;
  dynamic selectDigitalAssetWithdraw;
  dynamic selectAmount;
  dynamic requestPayment;
  dynamic withDrawAmount;
  TextEditingController addCtrl = TextEditingController();

  //crypto screen send dropDown layout
  List sendDropDownItems = [
    {'value': 1, 'label': 'ETH', 'icon': eSvgAssets.eth},
    {'value': 2, 'label': 'BTC', 'icon': eSvgAssets.bitcoinSVGIcon},
    {'value': 3, 'label': 'BNB', 'icon': eSvgAssets.bnb},
  ];

  //crypto screen send Amount dropDown layout
  List sendAmountDropDownItems = [
    {'value': 0, 'label': 'Amount in ETH', 'icon': eSvgAssets.eth},
    {'value': 1, 'label': 'Amount in BTC', 'icon': eSvgAssets.bitcoinSVGIcon},
    {'value': 2, 'label': 'Amount in BNB', 'icon': eSvgAssets.bnb},
  ];

  //crypto screen send Amount dropDown layout
  List recipientNameDropDownItems = [
    {'value': 0, 'label': 'Seema Williams'},
    {'value': 1, 'label': 'Higain Williams'},
    {'value': 2, 'label': 'Survana Williams'},
  ];

  //you Send on change value
  youSendOnChange(newValue) {
    youSend = newValue;
    notifyListeners();
  }

  //you Receive on change value
  youReceiveOnChange(newValue) {
    youReceive = newValue;
    notifyListeners();
  }

  //select Recipient Name on change value
  selectRecipientNameOnChange(newValue) {
    selectRecipientName = newValue;
    notifyListeners();
  }

  //requestPayment on change value
  requestPaymentOnChange(newValue) {
    requestPayment = newValue;
    notifyListeners();
  }

  //withDrawAmount on change value
  withDrawAmountOnChange(newValue) {
    withDrawAmount = newValue;
    notifyListeners();
  }

  //select Recipient Sec Name on change value
  selectRecipientSecNameOnChange(newValue) {
    selectRecipientSecName = newValue;
    notifyListeners();
  }

  //select Recipient Sec Name on change value
  selectDigitalAssetOnChange(newValue) {
    selectDigitalAsset = newValue;
    notifyListeners();
  } //select Recipient Sec Name on change value

  selectDigitalAssetWithOnChange(newValue) {
    selectDigitalAssetWithdraw = newValue;
    notifyListeners();
  }

  //select Amount Sec Name on change value
  selectAmountOnChange(newValue) {
    selectAmount = newValue;
    notifyListeners();
  }
//init
  init() {
    addCtrl.text = "0bu7895614569823";
    selectRecipientName = recipientNameDropDownItems[0]['value'];
    selectAmount = sendAmountDropDownItems[1]['value'];
    requestPayment = sendDropDownItems[1]['value'];
    selectDigitalAsset = sendDropDownItems[1]['value'];
    withDrawAmount = sendDropDownItems[1]['value'];
    notifyListeners();
  }
}
