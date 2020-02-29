import 'package:flutter_mvp_sample/model/model.dart';
import 'package:flutter_mvp_sample/view/view.dart';

class AppPresenter {
  set view(AppView view) {}
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
}
