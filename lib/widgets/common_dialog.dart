import '../config.dart';

// home Screen add money Dialog layout
commonDialog(context, bool? isHeading,
    {String? text,
    dynamic children,
    double? horizontal,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment}) {
  showDialog(
    context: context,
    builder: (BuildContext context1) {
      return DirectionalityRtl(
        child: Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: Sizes.s18),
          backgroundColor: Colors.transparent,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              ClipPath(
                  clipper:
                      CurveClipper(right: Sizes.s135, holeRadius: Sizes.s55),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s8),
                          color: appColor(context).appTheme.menuButtonColor),
                      child: SingleChildScrollView(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                               if (isHeading == true)
                               const SizedBox.shrink()
                                else
                                Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: TextWidgetCommon(
                                  text: language(context, text),
                                  style: AppCss.latoSemiBold18.textColor(
                                      appColor(context).appTheme.darkText),
                                  textAlign: TextAlign.center,
                                ).padding(
                                    vertical: Sizes.s20, horizontal: Sizes.s20),
                              ),
                              Divider(
                                  height: 1,
                                  thickness: 1,
                                  color:  appColor(context).appTheme.dividerColor)
                            ],
                          ),
                        Column(
                                mainAxisAlignment: mainAxisAlignment ??
                                    MainAxisAlignment.start,
                                crossAxisAlignment: crossAxisAlignment ??
                                    CrossAxisAlignment.start,
                                children: children)
                            .padding(
                                horizontal: horizontal ?? Sizes.s15,
                                bottom: Sizes.s43,
                                top: Sizes.s20)
                      ])))),
              Positioned(
                bottom: -Sizes.s21,
                child: Container(
                    height: Sizes.s41,
                    width: Sizes.s41,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: appColor(context).appTheme.trans,
                        ),
                        color: appColor(context).appTheme.menuButtonColor),
                    child: IconButton(
                      color: appColor(context).appTheme.darkText,
                      onPressed: () => route.pop(context),
                      icon: const Icon(Icons.close),
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                              Size(Sizes.s24, Sizes.s24))),
                    )),
              ),
            ],
          ),
        ),
      );
    },
  );
}
