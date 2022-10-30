import 'package:flutter/material.dart';

class MarketWidget extends StatelessWidget {
  const MarketWidget({Key? key, required this.isDostavka}) : super(key: key);
  final bool isDostavka;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.green,
        child: ColoredBox(
          color: Colors.green,
          child: SizedBox.square(
            dimension: 50,
          ),
        ));
  }
}
