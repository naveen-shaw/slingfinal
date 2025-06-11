import 'package:mpay/config.dart';

class ProfileChangePassScreen extends StatelessWidget {
  const ProfileChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileChangePassProvider>(
        builder: (context1, changePassCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => changePassCtrl.changeFalse()),
          child: DirectionalityRtl(
              child: PopScope(
                  onPopInvoked: (didPop) {
                    if (didPop) {
                      return;
                    }
                    if (changePassCtrl.isChange) {
                      changePassCtrl.changeFalse();
                    } else {
                      route.pop(context);
                    }
                  },
                  canPop: false,
                  child: Scaffold(
                      resizeToAvoidBottomInset: false,
                      appBar: CommonAppBar(
                          title: appFonts.changePassword,
                          onTap: () {
                            changePassCtrl.isChange
                                ? changePassCtrl.changeFalse()
                                : route.pop(context);
                          }),
                      body: changePassCtrl.isChange
                          ? // profile screen change password screen old password,new pass, confirm pass text & textField layout
                          ProfileChangePassWidgets()
                              .profileChangePassOldLayout(context,changePassCtrl)
                          : ProfileChangePassWidgets()
                              .profileChangePassEmailLayout(
                                  context, changePassCtrl)))));
    });
  }
}
