import 'package:gym_for_muscles/Models/exercise.dart';
import 'package:gym_for_muscles/Models/program.dart';
import 'package:gym_for_muscles/Models/trainer.dart';
import 'package:gym_for_muscles/Models/workout.dart';

class LoadData {}

class NavigateToTrainersPage {}

class ConfigData
{
  final List<Trainer> trainers;
  final List<Program> programs;
  final List<Workout> workouts;
  final List<Exercise> exercises;

   const ConfigData({this.trainers, this.programs, this.workouts, this.exercises});
}