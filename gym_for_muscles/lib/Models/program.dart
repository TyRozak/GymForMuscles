

import 'package:json_annotation/json_annotation.dart';


part 'program.g.dart';

@JsonSerializable()
class Program {
  final String id;
  final String name;
  final List<String> workouts;

  Program(this.id, this.name, this.workouts);

  
  factory Program.fromJson(Map<String, dynamic> json) => _$ProgramFromJson(json);
  Map<String, dynamic> toJson() => _$ProgramToJson(this);
}