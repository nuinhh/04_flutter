import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _themeColor = Colors.teal;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    ThemeData themeData = Theme.of(context);
    return Theme(
        data: ThemeData(
        primarySwatch: _themeColor, //用于导航栏、FloatingActionButton的背景色等
        iconTheme: IconThemeData(color: _themeColor) //用于Icon颜色
    ),
       child: Scaffold(
          appBar: AppBar(

            title: Text(widget.title),
         ),
          body: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme( data: themeData.copyWith(
                      iconTheme: themeData.iconTheme.copyWith(
                      color: Colors.black
                     ),
                   ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(Icons.favorite),
                   Icon(Icons.airport_shuttle),
                   Text("  颜色固定黑色")
              ]),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),


            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(children: [
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
            ],)
          ],
        ),
      ),
         floatingActionButton: Stack(
           children: <Widget>[
             Padding(padding: EdgeInsets.only(bottom:80),
               child: Align(
                 alignment: Alignment.bottomRight,
                 child: FloatingActionButton(
                   heroTag: "conuter",
                            onPressed: _incrementCounter,
                                tooltip: 'Increment',
                               child: const Icon(Icons.add),
                  ),
                 ),
              ),
             Align(
               alignment: Alignment.bottomRight,
               child: FloatingActionButton(
                 heroTag: "theme",
                            onPressed: () =>  //切换主题
                            setState(() =>
                          _themeColor =
                        _themeColor == Colors.teal ? Colors.blue : Colors.teal
                         ),
                       child: Icon(Icons.palette)
              ),
             ),
           ],
         ),


         ),
     );
  }
}

