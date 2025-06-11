import '../../../config.dart';

class AllServicesPage extends StatelessWidget {
  const AllServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllServiceProvider>(builder: (context1, serviceCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => serviceCtrl.init()),
          child: DirectionalityRtl(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: appColor(context).appTheme.screenBg,
                  appBar: CommonAppBar(
                      title: appFonts.allServices,
                      onTap: () => route.pop(context)),
                  body: Column(children: [
                    ...serviceCtrl.allServices.asMap().entries.map((e) {
                      List newList = e.value["list"];
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetCommon(
                                text: e.value["title"],
                                style: AppCss.latoSemiBold18.textColor(
                                    appColor(context).appTheme.darkText)),
                            Divider(
                                    color:
                                        appColor(context).appTheme.dividerColor)
                                .paddingSymmetric(vertical: Sizes.s12),
                            SizedBox(
                                height: Sizes.s210,
                                child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            childAspectRatio: 0.8,
                                            crossAxisSpacing: 1 * 3,
                                            mainAxisSpacing: 1),
                                    itemCount: newList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final Map<String, dynamic> e =
                                          newList[index];
                                      //All service icon, title layout
                                      return ServiceLayout(data: e);
                                    }))
                          ]);
                    }).toList()
                  ]).padding(top: Sizes.s20, horizontal: Sizes.s20))));
    });
  }
}
