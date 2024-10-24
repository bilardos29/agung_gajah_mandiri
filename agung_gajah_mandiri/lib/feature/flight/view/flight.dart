import 'package:agung_gajah_mandiri/feature/flight/model/airports_model.dart';
import 'package:agung_gajah_mandiri/feature/flight/view/flight_view.dart';
import 'package:agung_gajah_mandiri/feature/flight/view/oneway_view.dart';
import 'package:agung_gajah_mandiri/widgets/border_button.dart';
import 'package:flutter/material.dart';

enum FlightEnum { departure, arrival }

class FlightPage extends StatefulWidget {
  const FlightPage({Key? key}) : super(key: key);

  @override
  State<FlightPage> createState() => _FlightPageState();
}

class _FlightPageState extends State<FlightPage> {
  bool isOneWay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.navigate_before)),
        title: const Text('Flight'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  BorderButton(
                    button: 'One-way/round-trip',
                    onClick: () {
                      setState(() {
                        isOneWay = true;
                      });
                    },
                    isSelected: isOneWay,
                  ),
                  const SizedBox(width: 10),
                  BorderButton(
                    button: 'Multi - city',
                    onClick: () {
                      setState(() {
                        isOneWay = false;
                      });
                    },
                    isSelected: !isOneWay,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              isOneWay
                  ? OneWayView(departure: listAirport[0], arrival: listAirport[1])
                  : FlightView(),
            ],
          ),
        ),
      ),
    );
  }
}
