
import 'package:json_annotation/json_annotation.dart';


part 'exercise.g.dart';


@JsonSerializable()
class Exercise {
  final String id;
  final String name;

  final int time;
  final int reps;

  final String weight;

  final int restTime;

  final String notes;

  final String video;

  Exercise(this.id, this.name, this.time, this.reps, this.weight, this.restTime, this.notes, this.video);

    factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}