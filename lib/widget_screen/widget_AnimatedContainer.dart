import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetAnimatedContainer extends StatefulWidget {
  @override
  _WidgetAnimatedContainerState createState() =>
      _WidgetAnimatedContainerState();
}

class _WidgetAnimatedContainerState extends State<WidgetAnimatedContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
          print('selected is ' + selected.toString());
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 300.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
