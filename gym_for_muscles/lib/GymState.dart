import 'package:flutter/foundation.dart';
import 'package:gym_for_muscles/Models/exercise.dart';
import 'package:gym_for_muscles/Models/trainer.dart';
import 'package:gym_for_muscles/Models/workout.dart';
import 'package:gym_for_muscles/Models/program.dart';

@immutable
class GymAppState {
  final List<Trainer> trainers;
  final List<Program> programs;
  final List<Workout> workouts;
  final List<Exercise> exercises;
  final bool loadComplete;

  GymAppState(
      {this.trainers,
      this.programs,
      this.workouts,
      this.exercises,
      this.loadComplete});

  GymAppState copy({GymAppState newState}) {
    return GymAppState(
        trainers: _getTrainers(newState),
        programs: _getPrograms(newState),
        workouts: _getWorkouts(newState),
        exercises: _getExercises(newState),
        loadComplete: _getLoadComplete(newState));
  }

  
  List<Trainer> _getTrainers(GymAppState newState) {
    if (newState.trainers != null) {
      return newState.trainers;
    } else {
      return trainers;
    }
  }

  List<Program> _getPrograms(GymAppState newState) {
    if (newState.programs != null) {
      return newState.programs;
    } else {
      return programs;
    }
  }

    List<Workout> _getWorkouts(GymAppState newState) {
    if (newState.workouts != null) {
      return newState.workouts;
    } else {
      return workouts;
    }
  }

    List<Exercise> _getExercises(GymAppState newState) {
    if (newState.exercises != null) {
      return newState.exercises;
    } else {
      return exercises;
    }
  }
    
    bool _getLoadComplete(GymAppState newState) {
    if (newState.loadComplete != null) {
      return newState.loadComplete;
    } else {
      return loadComplete;
    }
  }
}