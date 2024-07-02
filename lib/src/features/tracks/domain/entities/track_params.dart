class TrackParams {
  final String term;
  final String locate;
  final int limit;

  TrackParams({
    required this.term,
    required this.locate,
    required this.limit,
  });

  // TrackParams.fromJson(Map<String, dynamic> json) {
  //   term = json['term'];
  //   locate = json['locate'];
  //   limit = json['limit'];
  // }

  // Map<String, dynamic> toJson() {
  //   final data = <String, dynamic>{};
  //   data['term'] = term;
  //   data['locate'] = locate;
  //   data['limit'] = limit;
  //   return data;
  // }
}
