import 'package:json_annotation/json_annotation.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_entity.dart';
part 'track.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Track extends TrackEntity {
  const Track(
      {required super.title,
      required super.subtitle,
      required super.type,
      required super.images});

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        subtitle,
        type,
        images,
      ];
}
