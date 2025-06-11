import '../../../../../config.dart';

class HomeBodyLayout extends StatelessWidget {
  const HomeBodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Consumer<HomeScreenProvider>(
        builder: (context1, homeCtrl, child) {
          return StatefulWrapper(
            onInit: ()=> Future.delayed(DurationClass.ms150).then((value) => homeCtrl.init()),
            child:  const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // first card  + add Money layout
                  FirstCardLayout(),
                  // transfer,bill, request, withdraw list layout
                  ListLayout(),
                  // select service layout
                  SelectService(),
                  //quick send money layout
                  QuickSendToLayout(),
                  //transaction list layout
                  Transaction(),
                  // all cards animation layout
                  HSAllCardLayout(),
                  //bill details layout
                  HSBillsDetailsLayout(),
                  // saving plan layout
                  HSSavingPlans(),
                  //Monthly Statistics layout
                  HSMonthlyLayout(),
                  //news update list layout
                  HSNewsUpdate()
                ]).paddingOnly(
              bottom: Sizes.s100,
            ),
          );
        },
      ),
    );
  }
}
