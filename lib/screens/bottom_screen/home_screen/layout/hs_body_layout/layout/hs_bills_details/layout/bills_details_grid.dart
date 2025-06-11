

import '../../../../../../../../config.dart';
// bill details grid layout
class BillsDetailsGrid extends StatelessWidget {
  const BillsDetailsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService,HomeScreenProvider>(
      builder: (context1, themeCtrl,homeCtrl, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: Sizes.s260,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.30,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemCount: homeCtrl.billDetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Map<String, dynamic> e = homeCtrl.billDetails[index];
                    //Home screen bill details grid view icon, title,subtitle & price layout
                    return GridLayout(data: e);
                  },
                ))
          ],
        );
      },
    );
  }
}
