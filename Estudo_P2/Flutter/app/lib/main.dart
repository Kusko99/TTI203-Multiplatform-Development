import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.red[600]),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Hello World'),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.amber,
            child: Text(
              'click me',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            child: Text('inside container'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicou');
        },
        backgroundColor: Colors.red[600],
        child: const Text('click'),
      ),
    );
  }
}

// snippets for icons and buttons

//  Icon(
//    Icons.airport_shuttle,
//    color: Colors.lightBlue,
//    size: 50.0
//  ),

//  RaisedButton(
//    onPressed: () {
//      print('you clicked me');
//    },
//    child: Text('click me'),
//    color: Colors.lightBlue,
//  ),

//  FlatButton(
//    onPressed: () {},
//    child: Text('click me again'),
//    color: Colors.amber
//  ),

//  RaisedButton.icon(
//    onPressed: () {},
//    icon: Icon(Icons.mail),
//    label: Text('mail me'),
//    color: Colors.amber,
//  ),
