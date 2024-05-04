import 'package:flutter/material.dart';
import 'package:layouting_ticketing/component/custom_navbar.dart';
import 'package:layouting_ticketing/pages/history.dart';
import 'package:layouting_ticketing/pages/home.dart';
import 'package:layouting_ticketing/pages/profile.dart';
import 'package:layouting_ticketing/pages/ticket.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBar() {
      return SafeArea(
        child: SizedBox(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomNavbar(
                  iconPath: 'assets/icons/home2.png',
                  label: 'Home',
                  index: 0,
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  currentIndex: currentIndex),
              CustomNavbar(
                  iconPath: 'assets/icons/history.png',
                  label: 'History',
                  index: 1,
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  currentIndex: currentIndex),
              CustomNavbar(
                  iconPath: 'assets/icons/ticket.png',
                  label: 'Ticket',
                  index: 2,
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  currentIndex: currentIndex),
              CustomNavbar(
                  iconPath: 'assets/icons/profile.png',
                  label: 'Profile',
                  index: 3,
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  currentIndex: currentIndex),
            ],
          ),
          // TODO: Animated Icons,
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return Home();
        case 1:
          return const History();
        case 2:
          return const Ticket();
        case 3:
          return const Profile();

        default:
          return Home();
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: customBar(),
      body: body(),
    );
  }
}
