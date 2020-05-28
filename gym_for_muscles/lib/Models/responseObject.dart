
import 'package:gym_for_muscles/Models/exercise.dart';
import 'package:gym_for_muscles/Models/program.dart';
import 'package:gym_for_muscles/Models/trainer.dart';
import 'package:gym_for_muscles/Models/workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responseObject.g.dart';

@JsonSerializable()
class ResponseObject {
  final List<Trainer> trainers;
  final List<Program> programs;
  final List<Workout> workouts;
  final List<Exercise> exercises;

  ResponseObject(this.trainers, this.programs, this.workouts, this.exercises);

  factory ResponseObject.fromJson(Map<String, dynamic> json) => _$ResponseObjectFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseObjectToJson(this);
}