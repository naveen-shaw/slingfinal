
import '../../config.dart';

class WithDrawProvider extends ChangeNotifier{

  TextEditingController withDrawAmountCtrl = TextEditingController();

  // update text amount changes
  void updateTextField(int index, String amount) {
    withDrawAmountCtrl.text = amount;
  }

}