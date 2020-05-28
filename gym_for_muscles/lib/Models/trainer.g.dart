// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainer _$TrainerFromJson(Map<String, dynamic> json) {
  return Trainer(
    json['id'] as String,
    json['name'] as String,
    (json['programs'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TrainerToJson(Trainer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'programs': instance.programs,
    };
