import 'package:flutter/material.dart';
import 'package:flutter_mvp_sample/model/model.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppModel _appModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(controller: _appModel.controllerNumber1,),
          TextField(controller: _appModel.controllerNumber2,),
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
