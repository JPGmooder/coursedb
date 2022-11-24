import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class EmitCard extends StatefulWidget {
  const EmitCard({
    Key? key,
    required this.deletedRows,
    required this.editedRows,
  }) : super(key: key);
  final List<PlutoRow> editedRows;
  final List<PlutoRow> deletedRows;

  @override
  State<EmitCard> createState() => _EmitCardState();
}

class _EmitCardState extends State<EmitCard>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animation;
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
    _animation = Tween<Offset>(begin: Offset.zero, end: const Offset(1, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    _controller.addListener(() {
      print(_controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: AnimatedOpacity(
        opacity: _controller.value,
        duration: Duration(seconds: 1),
        child: Text(
          "Aboba",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
