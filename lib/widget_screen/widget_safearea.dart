import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetSafeArea extends StatefulWidget {
  @override
  _WidgetSafeAreaState createState() => _WidgetSafeAreaState();
}

class _WidgetSafeAreaState extends State<WidgetSafeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('SafeArea는 상단을 침해하지 않습니다.'),
      ),
    );
  }
}
