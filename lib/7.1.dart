import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
                title:Text("sample")
            ),
            body: HomeContent()
        )
    );
  }
}
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: (){},
          ),
          OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text("添加"),
            onPressed: (){},
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text("详情"),
            onPressed: (){},
          ),
        ],
      ),

    );

  }

}
class WillPopScopeTestRoute extends StatefulWidget {
  @override
  WillPopScopeTestRouteState createState() {
    return WillPopScopeTestRouteState();
  }
}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  DateTime? _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        return true;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text("1秒内连续按两次返回键退出"),
      ),
    );
  }
}
