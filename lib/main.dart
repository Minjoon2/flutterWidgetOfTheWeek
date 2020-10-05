import 'package:flutter/material.dart';
import 'package:widget/widget_screen/widget_AnimatedContainer.dart';
import 'package:widget/widget_screen/widget_FadeTransition.dart';
import 'package:widget/widget_screen/widget_FutureBuilder.dart';
import 'package:widget/widget_screen/widget_expanded.dart';
import 'package:widget/widget_screen/widget_opacity.dart';
import 'package:widget/widget_screen/widget_safearea.dart';
import 'package:widget/widget_screen/widget_wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WidgetList(),
    );
  }
}

class WidgetList extends StatefulWidget {
  @override
  _WidgetListState createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        GestureDetector(
          child: ListTile(
            title: Text('SafeArea :: 위젯이 상단 바를 침해하지 않습니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetSafeArea()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text('Expanded + flex :: 빈 공간에 대해 확장과 비율을 조절할 수 있습니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetExpanded()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text('Wrap :: 줄, 너비가 모자라서 넘칠때 유용하게 사용합니다. '),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetWrap()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title:
                Text('AnimatedContainer :: 폭, 너비 다양한 도형으로 애니메이션을 그릴 수 있습니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WidgetAnimatedContainer()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text('Opacity :: 도형에 투명도를 주어 안보이게 할 수 있습니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetOpacity()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text(
                'FutureBuilder :: Future 클래스로 제공받는 데이터들을 동기로 입력받을 수 있도록 해주는데, 신기한게 현재 어떤 상태인지 알 수 있도록 해줍니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetFutureBuilder()),
            );
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text('FadeTransition :: 하위 위젯의 불투명도에 효과를 주는 위젯입니다.'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetFadeTransition()),
            );
          },
        )
      ],
    ));
  }
}
