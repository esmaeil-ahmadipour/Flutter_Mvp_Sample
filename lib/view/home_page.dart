import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(),
          TextField(),
          RaisedButton(
            onPressed: (){},
            child: Icon(Icons.add),
          ),
          Text("Result:",style: TextStyle(fontSize: 30.0),),
        ],
      ),
    );
  }
}
