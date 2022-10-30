import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kursach/assets/colors.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class FoodPicker extends StatelessWidget {
  const FoodPicker(
      {Key? key,
      required this.isPressed,
      required this.onChanged,
      required this.text,
      required this.icon})
      : super(key: key);
  final bool isPressed;
  final IconData icon;
  final String text;
  final void Function(bool) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => onChanged(!isPressed),
          child: Neumorphic(
            duration: Duration(milliseconds: 600),
            style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.all(Radius.circular(18))),
                depth: isPressed ? -5 : 5,
                color: Theme.of(context).colorScheme.surface.withOpacity(0.5)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: isPressed
                  ? GradientMask(
                      size: 35,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ))
                  : Icon(
                      icon,
                    ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isPressed)
          GradientMask(
            size: 25,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Colors.white54),
            ),
          ),
        if (!isPressed)
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: Colors.grey),
          ),
      ],
    );
  }
}
