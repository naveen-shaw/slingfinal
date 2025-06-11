import 'package:mpay/config.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RequestProvider>(
      builder: (context1, reqCtrl, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {
              return;
            }
            if (reqCtrl.requestMoney) {
              reqCtrl.requestMoneyOnTapFalse();
            } else {
              route.pop(context);
            }
          },
          child: DirectionalityRtl(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: appColor(context).appTheme.screenBg,
                appBar: CommonAppBar(
                    title: appFonts.requestMoney,
                    onTap: () {
                      if (reqCtrl.requestMoney) {
                        reqCtrl.requestMoneyOnTapFalse();
                      } else {
                        route.pop(context);
                      }
                    }),
                body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  shrinkWrap: true,
                  children: [
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const RequestMoneyLayout().padding(bottom: Sizes.s25),
                          //request message, amount , send request button layout
                          const RequestTextLayout()
                        ]).padding(all: Sizes.s20),
                      ],
                )),
          ),
        );
      },
    );
  }
}
