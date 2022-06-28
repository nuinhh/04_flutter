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
      child: Text("Hello world",
        style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            height: 1.2,
            fontFamily: "Courier",
            background: Paint()..color=Colors.yellow,
            decoration:TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed
        ),
      ),
    );

  }

}
