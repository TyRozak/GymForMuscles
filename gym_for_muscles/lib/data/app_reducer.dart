import 'package:gym_for_muscles/data/actions.dart';
import 'package:gym_for_muscles/GymState.dart';
import 'package:redux/redux.dart';


final gymAppReducer = combineReducers<GymAppState>([
  TypedReducer<GymAppState, ConfigData>(_handleLoadData),
  TypedReducer<GymAppState, NavigateToTrainersPage>(
      _handleNavigateToTrainersPage)
]);

GymAppState _handleLoadData(
    GymAppState previousState, ConfigData action) {
  GymAppState state;
 
      state =
          previousState.copy(newState: GymAppState(trainers: action.trainers, 
                                                   programs: action.programs,
                                                   workouts: action.workouts,
                                                   exercises: action.exercises));
  return state;
}

GymAppState _handleNavigateToTrainersPage(
    GymAppState previousState, NavigateToTrainersPage action) {
  GymAppState state;
  state = previousState.copy(
      newState: GymAppState());
  return state;
}
