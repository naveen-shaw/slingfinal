import 'package:mpay/config.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context1, homeCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(backgroundColor: appColor(context).appTheme.screenBg,
            appBar: CommonAppBar(title: appFonts.search,onTap: () => route.pop(context)),
            body: SingleChildScrollView(   physics:const ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TextFiledCommon(
                      isPerFixIcon: true,
                      hintText: appFonts.searchHere,
                      prefixIcon: SvgPicture.asset(
                        eSvgAssets.searchIcon,
                        fit: BoxFit.scaleDown,colorFilter: ColorFilter.mode(appColor(context).appTheme.lightText, BlendMode.srcIn),
                        height: Sizes.s24,
                        width: Sizes.s24,
                      )),
                  Column(
                    children: homeCtrl.addPayeeList
                        .map((e) =>
                    //payeeList name,accountNumber, image layout
                    PayeeListLayout(data: e).marginOnly(top: Sizes.s15))
                        .toList(),
                  )
                ],
              ).padding(vertical: Sizes.s20, horizontal: Sizes.s20),
            )),
      );

    },
    );
  }
}
