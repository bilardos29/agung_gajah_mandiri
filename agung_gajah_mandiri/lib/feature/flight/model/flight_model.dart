import 'package:agung_gajah_mandiri/feature/flight/model/airports_model.dart';

class FlightModel {
  final String airlines;
  final String timeDeparture;
  final String timeArrival;
  final String dateDeparture;
  final String dateArrival;
  final String price;
  final AirportModel departure;
  final AirportModel arrival;

  FlightModel({
    required this.airlines,
    required this.timeDeparture,
    required this.timeArrival,
    required this.dateDeparture,
    required this.dateArrival,
    required this.price,
    required this.departure,
    required this.arrival,
  });
}
