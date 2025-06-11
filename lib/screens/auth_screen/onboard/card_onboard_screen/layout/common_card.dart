import 'package:mpay/config.dart';

class CommonCard extends StatelessWidget {
  final double? begin;
  final double? end;
  final double? left;
  final double? top;
  final double? width;
  final double? height;
  final String? image;
  final Duration? delay;
  final AnimationController? controller;
  const CommonCard(
      {super.key,
        this.begin,
        this.end,
        this.controller,
        this.left,
        this.top,
        this.width,
        this.height,
        this.delay,
        this.image});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        top: top,
        child: ScaleTransition(
            scale: Tween(begin: begin, end: end).animate(controller!),
            child: Container(
                width: height ?? Sizes.s220,
                height: width ?? Sizes.s120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.fill)))))
        .animate(delay: delay, onPlay: (controller) => controller.forward())
        .scaleXY(curve:Curves.bounceInOut )
        .slide().slideY(curve: Curves.bounceInOut)
        .move(delay: 100.ms, duration: 500.ms);
  }
}