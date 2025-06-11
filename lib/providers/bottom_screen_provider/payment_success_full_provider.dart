

import '../../config.dart';

class PaymentSuccessFullProvider extends ChangeNotifier {

  // after 2 sec. change page to payment full screen
  onInit(context) {
    Future.delayed(2.seconds).then((value) =>
        route.pushReplacementNamed(context, routeName.paymentSuccessFullScreen));
  }
}
