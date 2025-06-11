import '../../../../../../../config.dart';
// saving plan layout
class HSSavingPlans extends StatelessWidget {
  const HSSavingPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService,HomeScreenProvider>(
      builder: (context1, themeCtrl,homeCtrl, child) {
        return Column(
          children: [
            CommonTitleText(title: appFonts.mySavingPlans,onTap: ()=>route.pushNamed(context, routeName.savingPlanScreen),)
                .paddingOnly(top: Sizes.s15, bottom: Sizes.s18),
            SizedBox(
              height: Sizes.s185,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homeCtrl.savingPlan.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 18,
                      childAspectRatio: .1),
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> e = homeCtrl.savingPlan[index];
                    //saving plan icon,title,subtitle layout
                    return SavingPlanWidgets().savingPlanLayout(e, context,true);
                  },
                ),
            ),
          ],
        ).paddingSymmetric(horizontal: Sizes.s20);
      },
    );
  }
}