import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetFadeTransition extends StatefulWidget {
  @override
  _WidgetFadeTransitionState createState() => _WidgetFadeTransitionState();
}

class _WidgetFadeTransitionState extends State<WidgetFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  @override
  initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Text('Woolha.com',
                style: TextStyle(color: Colors.teal, fontSize: 50)),
          ),
        ),
      ),
    );
  }
}
