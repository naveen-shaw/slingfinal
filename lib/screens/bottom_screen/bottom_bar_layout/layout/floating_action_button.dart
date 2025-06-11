import 'package:mpay/config.dart';

// floating action button scan icon layout
class FloatingActionButtonLayout extends StatelessWidget {
  const FloatingActionButtonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.s50)),
      child: Container(
          width: Sizes.s60,
          height: Sizes.s60,
          decoration: BoxDecoration(
              shape: BoxShape.circle, gradient: gradientColor(context)),
          child: InkWell(
              onTap: () => route.pushNamed(context, routeName.scanPayScreen),
              child: SvgPicture.asset(eSvgAssets.scan, fit: BoxFit.scaleDown))),
    );
  }
}
