import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetWrap extends StatefulWidget {
  @override
  _WidgetWrapState createState() => _WidgetWrapState();
}

class _WidgetWrapState extends State<WidgetWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              for (var i = 0; i < 10; i++)
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.red),
                ),
            ],
          ),
          Wrap(
            direction: Axis.horizontal,
            //세로 가로 지정 가능
            alignment: WrapAlignment.center,
            //정렬 지정
            spacing: 10.0,
            runSpacing: 20.0,
            children: [
              for (var i = 0; i < 10; i++)
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green),
                ),
            ],
          ),
          Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
              Chip(
                // avatar: CircleAvatar(
                //     backgroundColor: Colors.blue.shade900, child: Text('AH')),
                label: Text('#Hamilton'),
                backgroundColor: Colors.white,
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('ML')),
                label: Text('Lafayette'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('HM')),
                label: Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('JL')),
                label: Text('Laurens'),
              ),
            ],
          ),
          // Center(
          //   //두줄이 안됨
          //   child: Wrap(
          //     direction: Axis.vertical,
          //     spacing: 5.0,
          //     children: [
          //       for (var i = 0; i < 10; i++)
          //         Container(
          //           width: 50,
          //           height: 50,
          //           margin: EdgeInsets.all(5),
          //           decoration: BoxDecoration(color: Colors.amber),
          //         ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
