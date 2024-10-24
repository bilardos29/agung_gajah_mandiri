import 'package:agung_gajah_mandiri/feature/flight/view/flight.dart';
import 'package:agung_gajah_mandiri/feature/hotel/model/hotel_menu_model.dart';
import 'package:agung_gajah_mandiri/feature/hotel/view/hotel.dart';
import 'package:agung_gajah_mandiri/widgets/base_widget.dart';
import 'package:agung_gajah_mandiri/widgets/home_menu.dart';
import 'package:agung_gajah_mandiri/widgets/image_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageProfile(),
                SizedBox(width: 8),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello Username,', style: TextStyle(fontSize: 16)),
                    Text('Good Afternoon!', style: TextStyle(fontSize: 12)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 80),
            const Text(
              'Start your journey, now!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeMenu(
                  menu: 'Trip',
                  img: 'ic_trip.png',
                  onClick: () {},
                ),
                HomeMenu(
                  menu: 'Flight',
                  img: 'ic_flight.png',
                  onClick: () {
                    BaseWidget.push(context, const FlightPage());
                  },
                ),
                HomeMenu(
                  menu: 'Hotel',
                  img: 'ic_hotel.png',
                  onClick: () {
                    BaseWidget.push(context, const HotelPage());
                  },
                ),
                HomeMenu(
                  menu: 'Attraction',
                  img: 'ic_attraction.png',
                  onClick: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: _selectedIndex,
          onTap: (idx) {
            setState(() {
              _selectedIndex = idx;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'My Trip',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
