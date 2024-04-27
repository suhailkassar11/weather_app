import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_items.dart';
import 'package:weather_app/hourly_forecast_items.dart';
// import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  // Future getCurrentWeather() async{
  //   http.get(Uri.parse(Uri()))
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //main Card
              SizedBox(
                width: double.infinity,
                child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "300 F",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Icon(
                                      Icons.cloud,
                                      size: 80,
                                    ),
                                    Text(
                                      "Rain",
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))))),
              ),
              const SizedBox(
                height: 20,
              ),
              // weatherForecast Cards
              const Text(
                "Weather Forecasting",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
               child:Row(children: [
                 HourlyForecastItems(temperature:"300",time:"3:04" ,icon: Icons.cloud,),
                 HourlyForecastItems(temperature:"301" ,time:"3:05",icon: Icons.cloudy_snowing, ),
                 HourlyForecastItems(temperature:"304" ,time:"3:08",icon: Icons.wb_cloudy_outlined, ),
                 HourlyForecastItems(temperature:"305" ,time:"3:00",icon:Icons.cloud ),
                 HourlyForecastItems(temperature:"307" ,time:"3:09",icon:Icons.cloud ),
                 HourlyForecastItems(temperature:"305" ,time:"3:06",icon:Icons.sunny ),
                 HourlyForecastItems(temperature:"302" ,time:"3:02" ,icon:Icons.thunderstorm),
              ])),
             const SizedBox(height: 20),

             const Text(
               "Additional Information",
               style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
             ),
           const Row(
             children: [
               AddInfoItems(icon: Icons.water_drop,label: "Humidity",readings: "94",),
               AddInfoItems(icon: Icons.air,label: "Wind Speed",readings: "7.5",),
               AddInfoItems(icon: Icons.beach_access,label:"Pressure",readings: "1000",),
             ],
           )
            ],
          ),
        ));
  }
}


