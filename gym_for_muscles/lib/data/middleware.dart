import 'package:gym_for_muscles/data/actions.dart';
import 'package:gym_for_muscles/data/data_provider.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:gym_for_muscles/GymState.dart';
import 'package:redux/redux.dart';


List<Middleware<GymAppState>> createLoginMiddleware(
    [DataProvider provider]) {
  final loadData = _loadData(provider);
  final navigateToTrainersPage = _navigateToTrainersPage(provider);

  return [
    TypedMiddleware<GymAppState, LoadData>(loadData),    
    TypedMiddleware<GymAppState, NavigateToTrainersPage>(navigateToTrainersPage),
    NavigationMiddleware<GymAppState>()
  ];
  }

  Middleware<GymAppState> _loadData(DataProvider provider) {
    return (Store<GymAppState> store, action, NextDispatcher next) async {
      var result = await provider.loadData();

      next(ConfigData(trainers: result.trainers,
                      programs: result.programs, 
                      workouts: result.workouts, 
                      exercises: result.exercises));
    };
  }

  Middleware<GymAppState> _navigateToTrainersPage(DataProvider provider) {
    return (Store<GymAppState> store, action, NextDispatcher next) async {
      next(action);
    };
  }
