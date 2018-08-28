import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scafKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar',
      home: Scaffold(
        key: _scafKey,
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hit below Button',
                  style: TextStyle(fontSize: 25.0),
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Hit Me'),
                  onPressed: () {
                    _scafKey.currentState.showSnackBar(SnackBar(
                      content: Text('This is SnackBar'),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.purpleAccent,
                    ));
                  },
                ),
                //rButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Hit Me'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('This is SnackBar'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.purpleAccent,
            ));
      },
    );
  }
}
