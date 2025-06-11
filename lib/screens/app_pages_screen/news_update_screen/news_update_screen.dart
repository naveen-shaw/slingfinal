import '../../../config.dart';

class NewsUpdateScreen extends StatelessWidget {
  const NewsUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsUpdateProvider>(
      builder: (context1, newsCtrl, child) {
        return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => newsCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(resizeToAvoidBottomInset: false,
              backgroundColor: appColor(context).appTheme.screenBg,
              appBar: CommonAppBar(
                title: appFonts.newsUpdate,
                onTap: () => route.pop(context),
                isImageIcon: eSvgAssets.searchIcon,
                isImageIconSvg: true,
              ),
              body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                          children: newsCtrl.newsUpdateList
                              .asMap()
                              .entries
                              .map((entry) {
                    var data = entry.value;
                    return NewsUpdateLayout(data: data).inkWell(
                        onTap: () => route.pushNamed(
                            context, routeName.newsDescriptionScreen,
                            arg: {"data": data}));
                  }).toList())
                      .padding(horizontal: Sizes.s18, vertical: Sizes.s20)),
            ),
          ),
        );
      },
    );
  }
}
