import '../../../../../../../config.dart';

class ContactPayButton extends StatelessWidget {
  final dynamic data;

  const ContactPayButton({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactPayProvider>(
      builder: (context1, contactPayCtrl,  child) {
        return DirectionalityRtl(
          child: Row(children: [
            Expanded(
                child: TextFiledCommon(
                 keyboardType: TextInputType.multiline,
                 focusNode: contactPayCtrl.textFocusNode,
                 controller: contactPayCtrl.controller,
                 style: AppCss.latoLight16
                  .textColor(appColor(context).appTheme.darkText),
                 onChanged: (value) => contactPayCtrl.textFiledChange(value),
                 hintText: appFonts.typeHere,
                 suffixIcon: SizedBox(
                      height: Sizes.s40,
                      width: Sizes.s40,
                      child: SvgPicture.asset(
                        eSvgAssets.send,
                        fit: BoxFit.scaleDown,
                      ))
                  .inkWell(onTap: () => contactPayCtrl.setMessage(context))
                  .decorated(
                      borderRadius: BorderRadius.circular(AppRadius.r6),
                      gradient: gradientColor(context))
                  .padding(all: Sizes.s8),
            ))
          ]).padding(bottom: Sizes.s20),
        );
      },
    );
  }
}
