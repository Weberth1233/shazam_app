import 'dart:convert';

import 'package:music_app/src/core/api/api_config.dart';
import 'package:music_app/src/core/error/exception.dart';
import 'package:music_app/src/features/tracks/data/models/track.dart';
import 'package:music_app/src/features/tracks/domain/entities/track_params.dart';
import 'package:http/http.dart' as http;

abstract class TrackRemoteDataSource {
  Future<List<Track>> getTracks(TrackParams params);
}

class TrackRemoteDataSourceImpl implements TrackRemoteDataSource {
  final http.Client client;

  TrackRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Track>> getTracks(TrackParams params) async {
    try {
      final url = Uri.parse(
          '${ApiConfig.baseUrl}term=${params.term}&locale=${params.locate}&limit=${params.limit}');

      final response = await client.get(url, headers: ApiConfig.apiHeaders);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List tracksJson = data['tracks']['hits'];
        return tracksJson.map((json) => Track.fromJson(json['track'])).toList();
      } else {
        throw ServerException(
            "status code error ${response.statusCode.toString()}");
      }
    } catch (error) {
      throw ServerException('Failed to load tracks ${error.toString()}');
    }
  }
}
