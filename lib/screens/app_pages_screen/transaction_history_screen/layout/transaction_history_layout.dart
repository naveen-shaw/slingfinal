import '../../../../config.dart';

class TransactionHistoryLayout extends StatelessWidget {
  final dynamic data;

  const TransactionHistoryLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    List newList = data["list"];
    return Consumer<TransactionHistoryProvider>(builder: (context1, transCtrl, child) {
      return transCtrl.thLayout
          ? CommonTransactionListLayout(newList, data)
          : CommonTransactionListLayout(newList, data, onTap: () =>TransactionHistoryWidgets().transactionDialogBox(context, transCtrl));
    });
  }
}
