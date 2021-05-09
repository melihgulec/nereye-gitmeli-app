class Weather{
  int temp;
  String description;
  String name;

  Weather({this.temp, this.description, this.name});

  factory Weather.fromJson(Map json){
    return Weather(
        temp: (json['main']['temp'] is int) ? json['main']['temp'] : int.parse(json['main']['temp'].toStringAsFixed(0)),
        description: json['weather'][0]['description'],
        name: json['name']
    );
  }
}