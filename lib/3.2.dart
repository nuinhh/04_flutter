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