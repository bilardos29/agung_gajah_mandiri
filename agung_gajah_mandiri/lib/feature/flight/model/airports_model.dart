class AirportModel {
  final String code;
  final String airport;
  final String country;
  final String city;

  AirportModel({
    required this.code,
    required this.city,
    required this.country,
    required this.airport,
  });
}

List<AirportModel> listAirport = [
  AirportModel(code: 'CGK', city: 'Jakarta', country: 'Indonesia', airport: 'Soekarno Hatta International Airport'),
  AirportModel(code: 'PNK', city: 'Pontianak', country: 'Indonesia', airport: 'Supadio'),
  AirportModel(code: 'BDO', city: 'Bandung', country: 'Indonesia', airport: 'Husein Sastranegara'),
  AirportModel(code: 'KNO', city: 'Medan', country: 'Indonesia', airport: 'Kualanamu International Airport'),
  AirportModel(code: 'SUB', city: 'Surabaya', country: 'Indonesia', airport: 'Juanda'),
  AirportModel(code: 'DPS', city: 'Bali', country: 'Indonesia', airport: 'Ngurah Rai International Airport'),
];
