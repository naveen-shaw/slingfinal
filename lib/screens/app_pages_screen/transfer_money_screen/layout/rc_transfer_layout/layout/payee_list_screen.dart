import 'package:mpay/config.dart';

class PayeeListScreen extends StatelessWidget {
  const PayeeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context1, homeCtrl, child) {
        return DirectionalityRtl(
          child: Scaffold(
              appBar: CommonAppBar(
                title: appFonts.payeeList,
                isImageIconSvg: true,
                isImageIcon: eSvgAssets.searchIcon,
                imageIconTap: () =>
                    route.pushNamed(context, routeName.searchScreen),
                onTap: () => route.pop(context),
              ),
              body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: homeCtrl.addPayeeList
                        .map((e) =>
                            //payeeList name,accountNumber, image layout
                            PayeeListLayout(data: e).marginOnly(top: Sizes.s15))
                        .toList(),
                  ).paddingSymmetric(
                      horizontal: Sizes.s20, vertical: Sizes.s10))),
        );
      },
    );
  }
}
