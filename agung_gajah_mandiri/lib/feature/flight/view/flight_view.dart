import 'package:agung_gajah_mandiri/feature/flight/model/airports_model.dart';
import 'package:agung_gajah_mandiri/feature/flight/view/flight.dart';
import 'package:agung_gajah_mandiri/widgets/main_button.dart';
import 'package:flutter/material.dart';

class FlightView extends StatelessWidget {
  const FlightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        menuTrip(
            'Flight 1', listAirport[0], listAirport[1], '24 October 2024'),
        const SizedBox(height: 10),
        menuTrip(
            'Flight 2', listAirport[1], listAirport[2], '25 October 2024'),
        const SizedBox(height: 10),
        menuTrip(
            'Flight 3', listAirport[2], listAirport[3], '26 October 2024'),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.lightBlue),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
              const SizedBox(width: 12),
              const Text('Add Another Flight'),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              const SizedBox(height: 12),
              menuForm('Passengers', '1 Adult', 'ic_passenger.png'),
              const SizedBox(height: 12),
              menuForm('Class', 'Economy', 'ic_seat.png'),
              const SizedBox(height: 20),
              MainButton(
                button: 'Search',
                onClick: () {},
              ),
            ],
          ),
        ),
      ],
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

  Widget menuTrip(
    String trip,
    AirportModel departure,
    AirportModel arrival,
    String date,
  ) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            trip,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
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
          menuForm('Departure Date', date, 'ic_date.png'),
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
