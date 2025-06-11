import '../../../../config.dart';

class CommonPositionLayout extends StatelessWidget {
  final double? height;
  final double? width;
  final double? left;
  final double? top;
  final String? image;
  final Duration? delay;


  const CommonPositionLayout({super.key, this.height, this.width, this.left, this.top, this.image, this.delay});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      height: height,
      width: width,
      top: top ,
      left: left,
      child: Image(
        image: AssetImage(image!),
      )
          .animate(
        delay: delay,
        onPlay: (controller) => controller.forward(),
      )
          .fadeIn(curve: Curves.slowMiddle)
          .move(delay: 100.ms, duration: 500.ms)
          .slideY(curve: Curves.bounceInOut)
          .scale(
        begin: const Offset(.0, .1),
        end: const Offset(1, 1),
        curve: Curves.easeInOut,
      ),
    );
  }
}
