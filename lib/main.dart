import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TweenAnimationBuilder"),
      ),
      body:Center(
        child:TweenAnimationBuilder(
        child: Image.network('https://images.unsplash.com/photo-1533912295802-535da631e9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
        duration: const Duration(seconds: 5),
        tween: ColorTween(begin: Colors.white, end: Colors.orange),
        builder: (_, Color color, Widget child) {
          return ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.modulate),
          child: child,
          );
        },
      )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
