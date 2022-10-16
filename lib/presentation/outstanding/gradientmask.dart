import 'package:flutter/cupertino.dart';
import 'package:kursach/assets/colors.dart';

class GradientMask extends StatelessWidget {
  const GradientMask(
      {Key? key,
      required this.child,
      required this.size,
      required this.begin,
      required this.end})
      : super(key: key);
  final Widget child;
  final double size;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: child,
      shaderCallback: (bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return LinearGradient(
          begin: begin,
          end: end,
                colors: [AppsColors.accentColor, AppsColors.primaryColor])
            .createShader(rect);
      },
    );
  }
}
