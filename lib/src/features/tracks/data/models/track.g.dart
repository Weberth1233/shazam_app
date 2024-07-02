// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
//dart run build_runner build --delete-conflicting-outputs

Track _$TrackFromJson(Map<String, dynamic> json) => Track(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      type: json['type'] as String,
      images: Map<String, String>.from(json['images'] as Map),
    );

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': instance.type,
      'images': instance.images,
    };
