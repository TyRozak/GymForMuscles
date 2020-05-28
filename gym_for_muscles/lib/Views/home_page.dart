import 'package:gym_for_muscles/data/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:gym_for_muscles/GymState.dart';
import 'package:redux/redux.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<GymAppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          // var widgets = <Widget>[SavedEmotionsList()];
          // if (vm.isLoading()) {
          //   widgets.add(
          //     Align(
          //       alignment: Alignment.center,
          //       child: Container(
          //           width: 48.0,
          //           height: 48.0,
          //           child: CircularProgressIndicator()),
          //     ),
          //   );
          // }
          return Scaffold(
            body: Stack(
              fit: StackFit.expand,
             // children: widgets,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              child: FloatingActionButton(
                onPressed: () {
                  vm.navigateToTrainersPage();
                },
                tooltip: 'Add Emotion',
                child: Icon(Icons.add),
              ),
            ),
          );
        });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Store<GymAppState> store = StoreProvider.of<GymAppState>(context);
    GymAppState state = store.state;
    // if (state.isDatabaseOpen) {
    //   store.dispatch(LoadEmotions());
    // }
  }
}

class _ViewModel {
  final Store<GymAppState> store;

  const _ViewModel({this.store});

  static _ViewModel fromStore(Store<GymAppState> store) {
    return _ViewModel(store: store);
  }

  void navigateToTrainersPage() {
    store.dispatch(NavigateToAction.push('/trainers'));
  }

  bool isLoading() => !store.state.loadComplete;
}