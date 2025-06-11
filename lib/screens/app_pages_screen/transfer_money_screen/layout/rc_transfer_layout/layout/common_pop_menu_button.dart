import '../../../../../../config.dart';

class CommonPopUpMenuButton extends StatelessWidget {
  const CommonPopUpMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: appColor(context).appTheme.screenBg,
      itemBuilder: (context) {
        // Define the menu items for the PopupMenuButton
        return <PopupMenuEntry>[
          menuItems(appFonts.viewTransaction, context,
              onTap: () =>
                  route.pushNamed(context, routeName.viewTransactionScreen)),
          menuDivider(context),
          menuItems(appFonts.message, context,
              onTap: () => route.pushNamed(context, routeName.messageScreen)),
          menuDivider(context),
          menuItems(appFonts.requestMoney, context),
          menuDivider(context),
          menuItems(appFonts.payMoney, context),
        ];
      },
    );
  }
}
