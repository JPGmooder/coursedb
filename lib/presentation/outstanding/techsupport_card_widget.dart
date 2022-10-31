import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TechSupportCard extends StatelessWidget {
  const TechSupportCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(color: Theme.of(context).colorScheme.surface),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Поддержка",
                style: Theme.of(context).textTheme.titleLarge,
                textScaleFactor: 0.8,
              ),
            ),
            Text(
              "Дайте нам знать, если у вас случились проблемы с доставкой.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NeumorphicButton(
                style: NeumorphicStyle(
                  depth: -5,
                ),
                onPressed: () => null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(pi),
                      child: Icon(
                        Icons.chat,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Чат",
                      textScaleFactor: 1.4,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
