import 'package:gym_for_muscles/data/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:gym_for_muscles/GymState.dart';
import 'package:redux/redux.dart';

class TrainersPage extends StatefulWidget {
  TrainersPage({Key key}) : super(key: key);

  @override
  _TrainersPageState createState() => _TrainersPageState();
}

class _TrainersPageState extends State<TrainersPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<GymAppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          Store<GymAppState> store = StoreProvider.of<GymAppState>(context);
          var widgets = <Widget>[new ListView.builder
          (
            itemCount: store.state.trainers.length,
            itemBuilder: (BuildContext ctxt, int index) {
            return new Text(store.state.trainers[index].toString());
            }
  )];
          return Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: widgets,
            )
            );
        }
          );

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

  void addNewEmotion() {
    store.dispatch(NavigateToAction.push('/list-emotions'));
  }

  bool isLoading() => !store.state.loadComplete;
}