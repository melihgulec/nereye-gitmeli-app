import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/Weather/Weather.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Services/WeatherAPIService.dart';

class WeatherScreen extends StatefulWidget {
  final Sehir data;

  WeatherScreen({this.data});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future<Weather> havaDurumu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    havaDurumu = getWeather(widget.data.adi);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: havaDurumu,
      builder: (context, AsyncSnapshot<Weather> snapshot) {
        if (snapshot.hasData) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/${widget.data.type == 1 ? 'Yurtici' : 'Yurtdisi'}/${widget.data.adi.toLowerCase()}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              '${DateFormat('dd.MM.yyyy').format(DateTime.now())}'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${snapshot.data.temp} °C',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 45),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            '${toBeginningOfSentenceCase(snapshot.data.description)}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${widget.data.adi}',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      ContainerWithTitle(
                        title: 'Detay',
                        widget: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              WeatherPropsListWidget(
                                title: 'Bulut',
                                icon: Icons.cloud,
                                value: '%'+snapshot.data.cloud.toString(),
                              ),
                              WeatherPropsListWidget(
                                title: 'Nem',
                                icon: Icons.opacity,
                                value: '%'+snapshot.data.humidity.toString(),
                              ),
                              WeatherPropsListWidget(
                                title: 'Basınç',
                                icon: Icons.circle,
                                value: ((snapshot.data.pressure * 0.001).toStringAsFixed(2)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ContainerWithTitle(
                        title: 'Detay',
                        widget: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              WeatherPropsListWidget(
                                title: 'Rüzgar',
                                icon: Icons.waves,
                                value: snapshot.data.windSpeed.toString() + ' m/s',
                              ),
                              WeatherPropsListWidget(
                                title: 'Rüzgar Yönü',
                                icon: Icons.explore,
                                value: snapshot.data.windDeg.toString() + ' deg',
                              ),
                              WeatherPropsListWidget(
                                title: 'Görüş',
                                icon: Icons.visibility,
                                value: (snapshot.data.visibility * 0.001).toStringAsFixed(0) + ' km',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class WeatherPropsListWidget extends StatelessWidget {
  final String title;
  final icon;
  final String value;
  final double iconSize = 45;
  final double valueTextSize = 20;

  WeatherPropsListWidget({this.title, this.icon, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
        SizedBox(
          height: 5,
        ),
        Text(
          '$value',
          style: TextStyle(fontSize: valueTextSize),
        )
      ],
    );
  }
}