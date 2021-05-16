class Weather{
  int temp;
  String description;
  String name;
  double windSpeed;
  int cloud;
  int pressure;
  int humidity;
  int visibility;
  int windDeg;

  Weather({this.temp, this.description, this.name, this.windSpeed, this.cloud, this.pressure, this.humidity, this.visibility, this.windDeg});

  factory Weather.fromJson(Map json){
    return Weather(
        temp: (json['main']['temp'] is int) ? json['main']['temp'] : int.parse(json['main']['temp'].toStringAsFixed(0)),
        description: json['weather'][0]['description'],
        name: json['name'],
        windSpeed: json['wind']['speed'],
        cloud: json['clouds']['all'],
        pressure: json['main']['pressure'],
        humidity: json['main']['humidity'],
        visibility: json['visibility'],
        windDeg: json['wind']['deg']
    );
  }
}