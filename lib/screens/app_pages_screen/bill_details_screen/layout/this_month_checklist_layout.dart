import '../../../../config.dart';

class ThisMonthChecklistLayout extends StatelessWidget {
  const ThisMonthChecklistLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context1, homeCtrl, child) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonTitleText(title: appFonts.thisMonthChecklist)
                  .paddingOnly(bottom: Sizes.s18),
              SizedBox(
                  height: Sizes.s260,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.30,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15),
                      itemCount: homeCtrl.billDetails.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Map<String, dynamic> e =
                            homeCtrl.billDetails[index];
                        // bill details grid view icon, title,subtitle & price layout
                        return ThisGridLayout(data: e);
                      }))
            ]).paddingOnly(top: Sizes.s20);
      },
    );
  }
}
