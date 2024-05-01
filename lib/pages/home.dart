import 'package:flutter/material.dart';
import 'package:layouting_ticketing/models/category_model.dart';
import 'package:layouting_ticketing/models/city_model.dart';
import 'package:layouting_ticketing/models/destiny_model.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  List<CategoryModel> categories = [];
  List<DestinyModel> destinies = [];
  List<CityModel> cities = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    destinies = DestinyModel.getDestinies();
    cities = CityModel.getCities();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      body: SafeArea(
        top: true,
        child: ListView(
          children: [
            _profile(),
            const SizedBox(
              height: 14,
            ),
            _categories(),
            const SizedBox(
              height: 14,
            ),
            _popularDestination(),
            const SizedBox(
              height: 14,
            ),
            _specialOffer(),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }

  Padding _specialOffer() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special offer for you!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Color(0xff7060E5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 240,
            child: ListView.separated(
              itemCount: cities.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.asset(
                          cities[index].imagePath,
                          width: 160,
                          height: 160,
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${cities[index].from} - ${cities[index].to}',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Start from',
                                style: TextStyle(
                                    color: Color(0xffFE7926),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rp ${cities[index].price} ',
                                style: const TextStyle(
                                    color: Color(0xffFE7926),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding _popularDestination() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most Popular Destination',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Color(0xff7060E5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 160,
            child: ListView.separated(
              itemCount: destinies.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(destinies[index].imgPath)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            destinies[index].logoPath,
                            height: 47,
                            width: 70,
                          ),
                          Container(
                            width: 60,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Color(0xff7060E5),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Center(
                              child: Text(
                                'IDR ${destinies[index].price}jt',
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destinies[index].from,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Image.asset('assets/icons/Swap.png'),
                                Text(
                                  ' ${destinies[index].to}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              destinies[index].date,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _categories() {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 0,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff7060E5)),
                  child: Image.asset(categories[index].iconPath),
                ),
                Text(
                  categories[index].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 14),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container _profile() {
    return Container(
      width: 390,
      height: 106,
      padding: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
          color: Color(0xff7060E5),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, Vahad Khusaini',
                style: TextStyle(
                    color: Color(0xffF1F0F2),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              const Text(
                'Lets Traveling with us',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                    color: Color(0xffDBDBDB),
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                Image.asset(
                  'assets/icons/Location.png',
                  width: 20,
                  height: 20,
                ),
                const Text(
                  ' Bandung, Indonesia',
                  style: TextStyle(
                      color: Color(0xffF1F0F2),
                      fontSize: 13,
                      fontFamily: 'Poppins'),
                )
              ])
            ],
          ),
          Stack(
            children: [
              Image.asset(
                'assets/icons/Bell.png',
                width: 25,
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
