import 'package:flutter/material.dart';
import 'package:flutter_mvp_sample/model/model.dart';
import 'package:flutter_mvp_sample/presenter/presenter.dart';
import 'package:flutter_mvp_sample/view/view.dart';

class HomePage extends StatefulWidget {
  final String title;
  final AppPresenter presenter;

  HomePage(this.presenter,{this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements AppView {
  AppModel _appModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _appModel.controllerNumber1,
          ),
          TextField(
            controller: _appModel.controllerNumber2,
          ),
          RaisedButton(
            onPressed: (){this.widget.presenter.clickListener();},
            child: Icon(Icons.add),
          ),
          Text(
            "Result: ${_appModel.result}",
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }

  @override
  void refreshData(AppModel model) {
   setState(() {
     this._appModel=model;
   });
  }

  @override
  void initState() {
    super.initState();
    this.widget.presenter.view=this;
  }

}
