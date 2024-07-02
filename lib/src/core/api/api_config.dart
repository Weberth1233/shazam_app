class ApiConfig {
  static const String baseUrl = 'https://shazam.p.rapidapi.com/search?';
  static const Map<String, String> apiHeaders = {
    'x-rapidapi-key': String.fromEnvironment('API_KEY'),
    'x-rapidapi-host': String.fromEnvironment('API_HOST'),
  };
}
