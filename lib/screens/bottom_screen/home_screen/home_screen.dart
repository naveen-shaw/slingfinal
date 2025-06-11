import '../../../config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<HomeScreenProvider,ThemeService>(builder: (context1, homeCtrl, themeCtrl,child) {
      return DirectionalityRtl(
          child: Scaffold(
              backgroundColor: appColor(context).appTheme.screenBg,
              body: const SingleChildScrollView(child: HomeBodyLayout())));
    });
  }
}
