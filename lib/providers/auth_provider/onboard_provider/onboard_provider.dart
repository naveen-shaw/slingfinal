import 'dart:developer';

import '../../../config.dart';

class OnBoardProvider extends ChangeNotifier {
  AnimationController? controller;
  Animation<double>? animation;

  late SpringSimulation simulation;
// Bord animation start duration
  initState(onBoardScreenState) {
    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      controller = AnimationController(
        vsync: onBoardScreenState,
        duration: const Duration(seconds: 3), // Duration for the jump animation
      );
      final Animation<double> curvedAnimation = CurvedAnimation(
        parent: controller!,
        curve: Curves.bounceInOut,
      );
      if (animation == null) {
        animation =
            Tween<double>(begin: -300, end: -100).animate(curvedAnimation)
              ..addListener(() {
                notifyListeners(); // Trigger rebuild on animation update
              });
      } else {
        log("animation");
      }
      // Start the animation
      controller!.forward();
    });
  }
 // Bord animation dispose
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
