import 'package:dartz/dartz.dart';
import 'package:music_app/src/core/error/failure.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_params.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_entity.dart';

abstract class TrackRepository {
  Future<Either<Failure, List<TrackEntity>>> getTracks(TrackParams trackParams);
}
