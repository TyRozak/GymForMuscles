// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return Exercise(
    json['id'] as String,
    json['name'] as String,
    json['time'] as int,
    json['reps'] as int,
    json['weight'] as String,
    json['restTime'] as int,
    json['notes'] as String,
    json['video'] as String,
  );
}

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time': instance.time,
      'reps': instance.reps,
      'weight': instance.weight,
      'restTime': instance.restTime,
      'notes': instance.notes,
      'video': instance.video,
    };
