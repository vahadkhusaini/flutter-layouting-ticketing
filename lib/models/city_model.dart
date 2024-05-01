class CityModel {
  String from;
  String to;
  String price;
  String imagePath;

  CityModel(
      {required this.from,
      required this.to,
      required this.price,
      required this.imagePath});

  static List<CityModel> getCities() {
    List<CityModel> cities = [];

    cities.add(CityModel(
        to: 'Jakarta',
        from: 'Bandung',
        price: '45.000',
        imagePath: 'assets/images/Frame 73.png'));

    cities.add(CityModel(
        to: 'Semarang',
        from: 'Jakarta',
        price: '89.000',
        imagePath: 'assets/images/Frame 72.png'));

    cities.add(CityModel(
        to: 'Yogyakarta',
        from: 'Jakarta',
        price: '105.000',
        imagePath: 'assets/images/Frame 71.png'));

    return cities;
  }
}
