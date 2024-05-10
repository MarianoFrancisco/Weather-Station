import 'dart:convert';
import 'package:app/models/weather_data.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String apiUrl = 'https://cyt.cunoc.edu.gt/index.php';

  Future<WeatherData> fetchLastRecord(String location) async {
    print('$apiUrl/Ultimo-Registro/$location');
    final response =
        await http.get(Uri.parse('$apiUrl/Ultimo-Registro/$location'));

    if (response.statusCode == 200) {
      return WeatherData.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load weather data.');
    }
  }
}

void main() async {
  final WeatherService weatherService = WeatherService();
  final String location = 'Cunoc';

  try {
    final WeatherData weatherData =
        await weatherService.fetchLastRecord(location);
    print('Last weather record for $location:');
    print('Temperature: ${weatherData.temperatura}');
    print('Humidity: ${weatherData.humedad}');
    // Print other weather data as needed
  } catch (e) {
    print('Error: $e');
  }
}
