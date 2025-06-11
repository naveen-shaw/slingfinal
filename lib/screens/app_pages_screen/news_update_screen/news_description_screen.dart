import '../../../config.dart';

class NewsDescriptionScreen extends StatelessWidget {
  const NewsDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<NewsUpdateProvider, ThemeService>(
        builder: (context1, newsCtrl, themeCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms50)
              .then((value) => newsCtrl.getArgument(context)),
          child: DirectionalityRtl(
              child: Scaffold(resizeToAvoidBottomInset: false,
                  appBar: CommonAppBar(
                      title: appFonts.newsUpdate,
                      onTap: () => route.pop(context)),
                  body: newsCtrl.eData != null
                      ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              //news update description screen icon image layout
                              NewsUpdateWidgets().newsDesImageLayout(newsCtrl),
                              //news update description screen title ,name,date layout
                              NewsUpdateWidgets()
                                  .newsUpdateNameLayout(context, newsCtrl),
                              //news update description screen description layout
                              NewsUpdateWidgets()
                                  .newsUpdateDescLayout(context, newsCtrl),
                              //news update description screen bg image,home earn more cash... text,earn 50% with... text layout
                              NewsUpdateWidgets()
                                  .newsDesEarnLayout(context, themeCtrl)
                            ])
                          .padding(horizontal: Sizes.s20, vertical: Sizes.s20)
                      : Container())));
    });
  }
}
