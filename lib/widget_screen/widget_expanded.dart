import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetExpanded extends StatefulWidget {
  @override
  _WidgetExpandedState createState() => _WidgetExpandedState();
}

class _WidgetExpandedState extends State<WidgetExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Expanded(
                //expanded 레이아웃은 남은 부분을 채워줍니다.
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.yellow),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Expanded(
                //expanded 레이아웃은 남은 부분을 채워줍니다.
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Expanded(
                //expanded 레이아웃은 남은 부분을 채워줍니다.
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.cyan),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Expanded(
                flex: 2,
                //flex를 통해 expanded의 비율을 조절할 수 있습니다.
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.indigoAccent),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.brown),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.deepPurple),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
