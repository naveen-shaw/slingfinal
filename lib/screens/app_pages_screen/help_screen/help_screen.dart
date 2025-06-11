import 'package:mpay/config.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
        child: Consumer<HelpScreenProvider>(
          builder: (context, helpCtrl, child) {
            return StatefulWrapper(onInit: ()=>Future.delayed(DurationClass.ms150).then((value) => helpCtrl.init()),
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: appColor(context).appTheme.screenBg,
                  body: const Stack(children: [HelpLayout()])),
            );
          }
        ));
  }
}
