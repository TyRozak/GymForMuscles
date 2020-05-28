
import 'package:json_annotation/json_annotation.dart';

part 'trainer.g.dart';

@JsonSerializable()
class Trainer {
  final String id;
  final String name;
  final List<String> programs;

  Trainer(this.id, this.name, this.programs);

    factory Trainer.fromJson(Map<String, dynamic> json) => _$TrainerFromJson(json);
    Map<String, dynamic> toJson() => _$TrainerToJson(this);
}