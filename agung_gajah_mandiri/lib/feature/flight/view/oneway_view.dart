import 'package:agung_gajah_mandiri/feature/flight/model/airports_model.dart';
import 'package:agung_gajah_mandiri/feature/flight/view/flight.dart';
import 'package:agung_gajah_mandiri/widgets/main_button.dart';
import 'package:flutter/material.dart';

class OneWayView extends StatelessWidget {
  const OneWayView({required this.departure, required this.arrival, Key? key})
      : super(key: key);

  final AirportModel departure;
  final AirportModel arrival;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              menuFlight(
                departure.code,
                departure.city,
                flightEnum: FlightEnum.departure,
              ),
              iconSwitch(() {}),
              menuFlight(
                arrival.code,
                arrival.city,
                flightEnum: FlightEnum.arrival,
              ),
            ],
          ),
          const SizedBox(height: 20),
          menuForm('Departure Date', '24 October 2024', 'ic_date.png'),
          const SizedBox(height: 12),
          menuForm('Passengers', '1 Adult', 'ic_passenger.png'),
          const SizedBox(height: 12),
          menuForm('Class', 'Economy', 'ic_seat.png'),
          const SizedBox(height: 20),
          MainButton(button: 'Search', onClick: (){},),
        ],
      ),
    );
  }

  Widget menuFlight(String code, String city,
      {FlightEnum flightEnum = FlightEnum.departure}) {
    bool isDeparture = flightEnum == FlightEnum.departure;
    return Container(
      width: 120,
      child: Column(
        crossAxisAlignment:
            isDeparture ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(isDeparture ? 'From' : 'To',
              style: const TextStyle(fontSize: 12)),
          Text(code,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Text(city, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget iconSwitch(VoidCallback onClick) {
    return InkWell(
      onTap: onClick,
      child: Container(
          height: 32,
          width: 32,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(38),
          ),
          child: Image.asset('images/ic_switch.png')),
    );
  }

  Widget menuForm(String title, String detail, String img) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'images/$img',
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 10)),
            Text(detail, style: const TextStyle(fontSize: 16)),
          ],
        )
      ],
    );
  }
}
