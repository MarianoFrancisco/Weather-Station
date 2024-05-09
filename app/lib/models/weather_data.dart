class WeatherData {
  final DateTime fechahora;
  final double temperatura;
  final double humedad;
  final double radiacion;
  final double suelo1;
  final double suelo2;
  final double suelo3;
  final double direccion;
  final double velocidad;
  final double precipitacion;

  const WeatherData({
    required this.fechahora,
    required this.temperatura,
    required this.humedad,
    required this.radiacion,
    required this.suelo1,
    required this.suelo2,
    required this.suelo3,
    required this.direccion,
    required this.velocidad,
    required this.precipitacion,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      fechahora: DateTime.parse(json['fechahora']),
      temperatura: json['temperatura'].toDouble(),
      humedad: json['humedad'].toDouble(),
      radiacion: json['radiacion'].toDouble(),
      suelo1: json['suelo1'].toDouble(),
      suelo2: json['suelo2'].toDouble(),
      suelo3: json['suelo3'].toDouble(),
      direccion: json['direccion'].toDouble(),
      velocidad: json['velocidad'].toDouble(),
      precipitacion: json['precipitacion'].toDouble(),
    );
  }
}
