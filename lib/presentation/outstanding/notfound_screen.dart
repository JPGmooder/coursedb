import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class NotFoundScreen extends StatefulWidget {
  NotFoundScreen({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  RiveAnimationController? _controller;
  bool isInit = false;

  void _onRiveInit(
    Artboard artboard,
  ) {
    setState(() {
      final _controller =
          StateMachineController.fromArtboard(artboard, 'State Machine 1');
      artboard.addController(_controller!);
      isInit = true;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: isInit ? 1 : 0,
          duration: Duration(seconds: 1),
          child: Text(
            "Здесь ничего нет...?",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: RiveAnimation.asset(
            "lib/assets/anim/empty.riv",
            onInit: _onRiveInit,
            controllers: _controller == null ? [] : [_controller!],
          ),
        ),
        AnimatedOpacity(
          opacity: isInit ? 1 : 0,
          duration: Duration(seconds: 2),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        )
      ],
    );
  }
}
