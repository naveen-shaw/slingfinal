import '../../../../../../../config.dart';

// all cards layout
class HSAllCardLayout extends StatelessWidget {
  const HSAllCardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService, HomeScreenProvider>(
        builder: (context1, themeCtrl, value, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CommonTitleText(
                onTap: () => route.pushNamed(context, routeName.allCardScreen),
                title: appFonts.allCards)
            .padding(top: Sizes.s25, bottom: Sizes.s18, horizontal: Sizes.s20),
        SizedBox(
            height: Sizes.s215,
            child: CarouselSlider.builder(
                itemCount: value.slider.length,
                options: CarouselOptions(
                  viewportFraction: 0.45,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.27,
                  animateToClosest: true,
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  autoPlay: false,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Center(
                      child:
                          Image.asset(value.slider[index], fit: BoxFit.fill));
                }))
      ]);
    });
  }
}
