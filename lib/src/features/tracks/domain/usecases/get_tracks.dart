import 'package:dartz/dartz.dart';
import 'package:music_app/src/core/error/failure.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_params.dart';
import 'package:music_app/src/features/tracks/domain/repositories/track_repository.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_entity.dart';

class GetTracks {
  final TrackRepository trackRepository;

  GetTracks({required this.trackRepository});

  Future<Either<Failure, List<TrackEntity>>> call(
      TrackParams trackParams) async {
    return await trackRepository.getTracks(trackParams);
  }
}
