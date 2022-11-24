import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursachdesktop/assets/Icons.dart';
import 'package:kursachdesktop/data/colors.dart';
import 'package:kursachdesktop/view/outsanding/gradientmask.dart';

// * Основной навигационный элемент для широкоэкранный устройств

class MainScreenSwitcher extends StatelessWidget {
  MainScreenSwitcher(
      {Key? key,
      required this.controller,
      required this.changeTab,
      required this.onPressedToPop})
      : super(key: key);
  TabController controller;
  void Function()? onPressedToPop;
  Map<String, dynamic> Function(int) changeTab;
  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;
    return Neumorphic(
      style: NeumorphicStyle(
          color: isLight
              ? AppsColors.darkerPrimaryColor
              : Theme.of(context).colorScheme.background,
          boxShape: const NeumorphicBoxShape.rect()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (MediaQuery.of(context).size.width > 400)
            GradientMask(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                size: 45,
                child: Icon(
                  DeliverIcon.product_management,
                  color: Colors.white,
                  size: 50,
                )),
          Flexible(
            flex: 3,
            child: Stack(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: TabBar(
                    isScrollable: true,
                    onTap: changeTab,
                    controller: controller,
                    indicatorColor: isLight
                        ? Theme.of(context)
                            .colorScheme
                            .background
                            .withOpacity(0.5)
                        : Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.label,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    labelPadding: EdgeInsets.symmetric(horizontal: 15),
                    tabs: List.generate(
                        controller.length,
                        (index) => Neumorphic(
                              style: NeumorphicStyle(
                                  boxShape: const NeumorphicBoxShape.rect(),
                                  depth: index == controller.index ? -3 : 0,
                                  color: isLight
                                      ? Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withAlpha(
                                              index == controller.index ? 5 : 0)
                                      : Theme.of(context)
                                          .colorScheme
                                          .background
                                          .withAlpha(index == controller.index
                                              ? 50
                                              : 0)),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: index == controller.index
                                        ? GradientMask(
                                            child: _MainScreenTab(
                                                index: index,
                                                changeTab: changeTab,
                                                isLight: isLight),
                                            size: 100,
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight)
                                        : _MainScreenTab(
                                            index: index,
                                            changeTab: changeTab,
                                            isLight: isLight)),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MainScreenTab extends StatelessWidget {
  const _MainScreenTab({
    Key? key,
    required this.index,
    required this.changeTab,
    required this.isLight,
  }) : super(key: key);
  final int index;
  final Map<String, dynamic> Function(int p1) changeTab;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20),
        Icon(
          changeTab(index)['icon'] as IconData,
          color: isLight
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.primary,
        ),
        SizedBox(width: 25),
        SizedBox(
          width: MediaQuery.of(context).size.width > 1000
              ? MediaQuery.of(context).size.width * 0.1
              : MediaQuery.of(context).size.width * 0.05,
          child: Text(changeTab(index)['text'],
              softWrap: true,
              overflow: MediaQuery.of(context).size.width < 1000 &&
                      changeTab(index)['icon'] != Icons.home
                  ? TextOverflow.ellipsis
                  : null,
              textScaleFactor:
                  MediaQuery.of(context).size.width > 1000 ? 1 : 0.8,
              style: Theme.of(context).textTheme.labelMedium),
        ),
      ],
    );
  }
}
