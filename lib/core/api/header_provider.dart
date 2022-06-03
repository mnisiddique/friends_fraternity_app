class DateHeaderProvider {
  final String _apiKey = "7fdcf23096msh9823ace0c2d27d0p1e29a7jsn62255fd16954";
  Map<String, String> getDateHeader() {
    return {
      'X-RapidAPI-Host': 'world-clock.p.rapidapi.com',
      'X-RapidAPI-Key': _apiKey,
    };
  }
}
