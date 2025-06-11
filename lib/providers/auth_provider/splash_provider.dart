import '../../config.dart';

class SplashProvider extends ChangeNotifier {
  late AnimationController controller;
  bool animation = false;
  double bottom = -Sizes.s10,imageBottom=-1;

// rocket animation start duration
  initState(BuildContext context, splashScreenState) {
    controller = AnimationController(
      lowerBound: 0.0,
      vsync: splashScreenState,
      duration: const Duration(milliseconds: 500), // Adjust duration as needed
    );

    controller.forward().then((_) {
      Future.delayed(const Duration(seconds: 5)).then((value) {
        bottom =1;
        animation =true;
        imageBottom =150;
        Future.delayed(const Duration(seconds: 3)).then(
                (value) => route.pushReplacementNamed(context, routeName.onBoard));
        notifyListeners();
      });
    });
  }

  // rocket animation duration
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
