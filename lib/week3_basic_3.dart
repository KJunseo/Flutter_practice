import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: firstPage(),
    );
  }
}

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _firstListView(context);
  }
}

Widget _firstListView(BuildContext context) {

  return ListView(
    padding: const EdgeInsets.all(16.0),
    children: <Widget>[
      ListTile(
        title: Text('Next Screen'),
        leading: Icon(Icons.navigate_next),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
      ),
      ListTile(
        title: Text('Raining'),
        leading: Icon(Icons.wb_cloudy),
      ),
      ListTile(
        title: Text('Sunny'),
        leading: Icon(Icons.wb_sunny),
      ),
    ],
  );
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: secondPage(),
    );
  }
}

class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _secondListView(context);
  }
}

Widget _secondListView(BuildContext context) {

  return ListView(
    padding: const EdgeInsets.all(16.0),
    children: <Widget>[
      ListTile(
        title: Text('Go to third screen?'),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdRoute()),
          );
        },
      ),
      ListTile(
        title: Text('Or go back?'),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    ],
  );
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}