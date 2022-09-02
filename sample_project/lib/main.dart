import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: MyScaffold(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello world 1",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: "navigation menu",
          ),
          Expanded(child: title),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: "Search",
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              "Example Title",
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello world'),
            ),
          ),
        ],
      ),
    );
  }
}
