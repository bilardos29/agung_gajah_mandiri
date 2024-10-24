class HotelMenuModel{
  final String menu;
  final String image;

  HotelMenuModel({required this.menu, required this.image});

}

List<HotelMenuModel> listMenu = [
  HotelMenuModel(menu: 'Trip', image: 'ic_trip.png'),
  HotelMenuModel(menu: 'Flight', image: 'ic_flight.png'),
  HotelMenuModel(menu: 'Hotel', image: 'ic_hotel.png'),
  HotelMenuModel(menu: 'Attraction', image: 'ic_attraction.png'),
];