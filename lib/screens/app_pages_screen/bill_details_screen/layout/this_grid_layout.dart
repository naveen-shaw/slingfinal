
import '../../../../config.dart';

class ThisGridLayout extends StatelessWidget {
  final dynamic data;

  const ThisGridLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //this month checklist icon,title,subtitle layout
        BillDetailsWidgets().iconRowLayout(context, data),

        //this month checklist price,pay and paid button layout
        BillDetailsWidgets().priceRowLayout(context, data),
      ],
    ).billDetailsExtension(context).inkWell(onTap: () {
      if (data["title"].toString().contains(appFonts.apple) ||
          data["title"].toString().contains(appFonts.tv)) {
        //bill make Payment screen
        route.pushNamed(context, routeName.billMakePayment);
      } else {
        commonDialog(context, false,
            text: appFonts.mobileBillDetail,
            children: [
              //common billDetails Dialog amount,bill date,due Date,bill Number,Mobile Number,Bill Status layout
              BillDetailsDialogsWidgets().commonBillLayout(context, data)
            ]);
      }
    });
  }
}
