import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetOpacity extends StatefulWidget {
  @override
  _WidgetOpacityState createState() => _WidgetOpacityState();
}

class _WidgetOpacityState extends State<WidgetOpacity> {
  bool _visible = true;
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
                child: Text("클릭 !"),
                onTap: () {
                  setState(() {
                    _visible = !_visible;
                  });
                  print(_visible);
                }),
            Opacity(
              opacity: _visible ? 1.0 : 0.0,
              child: const Text("Now you see me, now you don't!"),
            ),
            RaisedButton(
              child: Text('Fade Logo'),
              onPressed: _changeOpacity,
            ),
            Expanded(
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 3),
                child: FlutterLogo(),
              ),
            ),
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 3),
              child: Image.network(
                  'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  colorBlendMode: BlendMode.darken),
            ),
            Text('사라진거 확인해보자')
          ],
        ),
      ),
    );
  }
}
