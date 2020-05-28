// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responseObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseObject _$ResponseObjectFromJson(Map<String, dynamic> json) {
  return ResponseObject(
    (json['trainers'] as List)
        ?.map((e) =>
            e == null ? null : Trainer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['programs'] as List)
        ?.map((e) =>
            e == null ? null : Program.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['workouts'] as List)
        ?.map((e) =>
            e == null ? null : Workout.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['exercises'] as List)
        ?.map((e) =>
            e == null ? null : Exercise.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResponseObjectToJson(ResponseObject instance) =>
    <String, dynamic>{
      'trainers': instance.trainers,
      'programs': instance.programs,
      'workouts': instance.workouts,
      'exercises': instance.exercises,
    };
