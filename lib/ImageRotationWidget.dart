import 'dart:math';

import 'package:flutter/material.dart';

class ImageRotationWidget extends StatefulWidget {
  final Widget child;

  ImageRotationWidget(this.child);

  @override
  _ImageRotationWidgetState createState() => _ImageRotationWidgetState();
}

class _ImageRotationWidgetState extends State<ImageRotationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5),
        upperBound: pi * 2,
        animationBehavior: AnimationBehavior.preserve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward(from: 0.0);

    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: widget.child,
    );
  }
}
