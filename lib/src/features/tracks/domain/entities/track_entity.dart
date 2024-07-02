import 'package:equatable/equatable.dart';

class TrackEntity extends Equatable {
  final String title;
  final String subtitle;
  final String type;
  final Map<String, String> images;

  const TrackEntity(
      {required this.title,
      required this.subtitle,
      required this.type,
      required this.images});

  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        subtitle,
        type,
        images,
      ];
}
