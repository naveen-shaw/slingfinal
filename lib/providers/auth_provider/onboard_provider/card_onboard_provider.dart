import 'package:flutter/cupertino.dart';

class CardOnBoardProvider extends ChangeNotifier{

  late AnimationController controller1;
  late AnimationController  controller2;
  late AnimationController controller3;
  late AnimationController controller4;
  Animation<double>? animation;

  //card animation layout
   initState(cardsOnboardScreenState) {
    controller1 = AnimationController(
      vsync: cardsOnboardScreenState,
      duration: const Duration(seconds: 1),
    );
    controller2 = AnimationController(
      vsync: cardsOnboardScreenState,
      duration: const Duration(seconds: 1),
    );
    controller3 = AnimationController(
      vsync: cardsOnboardScreenState,
      duration: const Duration(seconds: 1),
    );
    controller4 = AnimationController(
      vsync: cardsOnboardScreenState,
      duration: const Duration(seconds: 1),
    );

    controller1.forward();
    controller2.forward();
    controller3.forward();
    controller4.forward();
  }

  // animation dispose
  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

}