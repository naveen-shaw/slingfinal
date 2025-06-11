
import '../../../../config.dart';

class MyProfileWidgets{
  //profile screen my Account profile image layout
  Widget profileImageLayout(context){
    return Stack(children: [
      Image.asset(eImageAssets.profileBoard,
          height: Sizes.s78, fit: BoxFit.fill),
      SizedBox(
          height: Sizes.s120,
          child: Container(
              height: Sizes.s88,
              width: Sizes.s88,
              decoration: BoxDecoration(
                  color: appColor(context)
                      .appTheme
                      .trans
                      .withOpacity(0.1),
                  border: Border.all(
                      color:
                      appColor(context).appTheme.profileBorder,
                      width: Sizes.s2),
                  borderRadius: BorderRadius.circular(Sizes.s15)),
              child: Image.asset(eImageAssets.fourthQuick,
                  height: Sizes.s80, width: Sizes.s80)
                  .padding(all: Sizes.s4))
              .center()
              .padding(top: Sizes.s15)),
      Positioned(
          top: Sizes.s90,
          right: Sizes.s110,
          child: Container(
              height: Sizes.s29,
              width: Sizes.s29,
              decoration: BoxDecoration(
                  color: appColor(context).appTheme.menuButtonColor,
                  borderRadius: BorderRadius.circular(Sizes.s6),
                  border: Border.all(
                      width: 1,
                      color: appColor(context)
                          .appTheme
                          .gray
                          .withOpacity(0.5))),
              child: SvgPicture.asset(eSvgAssets.profileCamera,
                  fit: BoxFit.scaleDown)))
    ]);
  }
}
