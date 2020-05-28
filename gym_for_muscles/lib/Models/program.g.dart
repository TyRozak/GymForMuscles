// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return Program(
    json['id'] as String,
    json['name'] as String,
    (json['workouts'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ProgramToJson(Program instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workouts': instance.workouts,
    };
