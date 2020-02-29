import 'package:flutter_mvp_sample/model/model.dart';
import 'package:flutter_mvp_sample/view/view.dart';

class AppPresenter {
  set view(AppView view) {}
  void clickListener(){}
}

class BasicAppPresenter implements AppPresenter {
  AppModel _appModel;
  AppView _appView;

  BasicAppPresenter() {
    this._appModel = AppModel();
  }

  @override
  void set view(AppView view) {
    _appView=view;
    this._appView.refreshData(this._appModel);
  }

  @override
  void clickListener() {
    int valueEditText1=int.parse(this._appModel.controllerNumber1.text);
    int valueEditText2=int.parse(this._appModel.controllerNumber2.text);
    this._appModel.result=valueEditText1+valueEditText2;
    this._appView.refreshData(this._appModel);

  }
}
