import 'package:flutter/material.dart';

void main() => runApp(RobodriveMain());

class RobodriveMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.blue,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(text: 'Robot'),
              Tab(text: 'Actions'),
              Tab(text: 'Stats'),
              Tab(text: 'Logs'),
            ],
          ),
          body: TabBarView(
            children: [
              MyHomePage(title: 'Robodrive'),
              MyHomePage(title: 'Actions'),
              MyHomePage(title: 'Statistics'),
              MyHomePage(title: 'Logs'),
            ],
          ),
        ),
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text('Hello Android'),
    );
  }
}
