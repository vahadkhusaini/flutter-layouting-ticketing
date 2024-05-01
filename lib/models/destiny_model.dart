class DestinyModel {
  String from;
  String to;
  String date;
  String price;
  String logoPath;
  String imgPath;

  DestinyModel({
    required this.from,
    required this.to,
    required this.date,
    required this.price,
    required this.logoPath,
    required this.imgPath,
  });

  static List<DestinyModel> getDestinies() {
    List<DestinyModel> destinies = [];

    destinies.add(DestinyModel(
        from: 'Bandung',
        to: 'Bali',
        date: '8 - 9 April 2024',
        price: '1.9',
        imgPath: 'assets/images/Frame 81.png',
        logoPath: 'assets/icons/Air Asia.png'));

    destinies.add(DestinyModel(
        from: 'Jakarta',
        to: 'Singapore',
        date: '10 - 11 Mei 2024',
        price: '1.5',
        imgPath: 'assets/images/Frame 82.png',
        logoPath: 'assets/icons/Citilink.png'));

    destinies.add(DestinyModel(
        from: 'Jakarta',
        to: 'Tokyo',
        date: '12 - 13 Mei 2024',
        price: '7.2',
        imgPath: 'assets/images/Frame 83.png',
        logoPath: 'assets/icons/batik air.png'));

    return destinies;
  }
}
