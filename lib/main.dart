import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _autor = " ";
  int _switch = 1;
  void _incrementCounter() {
    setState(() {
      if (_switch == 1) {
        _autor = "Julio Eduardo Canizalez";
        _switch = 0;
      } else if (_switch == 0) {
        _switch = 1;
        _autor = " ";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Presiona el botón para revelar/ocultar al autor:',
                style: Theme.of(context).textTheme.subtitle1),
            Text(
              '$_autor',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Ver autor',
        child: Icon(Icons.text_fields),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
