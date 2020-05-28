
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:gym_for_muscles/GymState.dart';
import 'package:gym_for_muscles/Views/home_page.dart';
import 'package:gym_for_muscles/Views/trainers_page.dart';
import 'package:gym_for_muscles/data/data_provide_implementation.dart';
import 'package:redux/redux.dart';

import 'data/actions.dart';
import 'data/app_reducer.dart';
import 'data/middleware.dart';
import 'data/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final Store<GymAppState> store = new Store<GymAppState>(
    gymAppReducer,
    initialState: GymAppState(trainers: null, programs: null, workouts: null, exercises: null),
    middleware: createLoginMiddleware(DataProviderImplementation()),
  );

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<GymAppState>(
      store: widget.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gym For Muscles',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: NavigatorHolder.navigatorKey,
        home: MyHomePage(),
        routes: {
          '/home': (BuildContext context) => MyHomePage(),
          '/trainers': (BuildContext context) => TrainersPage(),
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.store.dispatch(LoadData());
  }

  @override
  void dispose() {
    super.dispose();
    //widget.store.dispatch(CloseDatabase());
  }
}