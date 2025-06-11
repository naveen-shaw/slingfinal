import '../../../../config.dart';

class MoneyTextFiled extends StatelessWidget {
  const MoneyTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PayListProvider>(builder: (context, value, child) {
      return  Column(
        children: [
          SizedBox(
            height: Sizes.s86,
            width: Sizes.s162,
            child: TextField(
              keyboardType: TextInputType.number,onChanged: (value1) => value.changeValue(),
              style: TextStyle(
                  fontSize: Sizes.s40), controller:value.price,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                  borderSide: BorderSide(
                      width: 2, color: appColor(context).appTheme.trans),
                ),
                fillColor: appColor(context).appTheme.gray.withOpacity(0.1),
                border: OutlineInputBorder(
                    borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                    borderSide: BorderSide(
                        color: appColor(context).appTheme.trans,
                        width: Sizes.s2)),
                hintText:
                '${getSymbol(context)}${(currency(context).currencyVal *
                    double.parse(language(context, appFonts.zero)))
                    .toStringAsFixed(1)}',
                hintStyle: TextStyle(
                    fontSize: Sizes.s40,
                    color: appColor(context).appTheme.lightText),
              ),
            ),
          ).paddingOnly(top: Sizes.s40, bottom: Sizes.s15),
          SizedBox(
            height: Sizes.s46,
            width: Sizes.s135,
            child: Center(
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                    borderSide: BorderSide(
                        width: 0.1, color: appColor(context).appTheme.trans),
                  ),
                  fillColor: appColor(context).appTheme.gray.withOpacity(0.1),
                  border: OutlineInputBorder(
                      borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                      borderSide: BorderSide(
                          color: appColor(context).appTheme.trans, width: 0.1)),
                  hintText: language(context, appFonts.enterReason),
                  hintStyle: TextStyle(
                      fontSize: Sizes.s14,
                      color: appColor(context).appTheme.lightText),
                ),
              ),
            ),
          ),
        ],
      );
    }
    );
  }
}
