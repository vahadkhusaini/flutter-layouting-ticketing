import 'package:flutter/material.dart';
import 'package:layouting_ticketing/theme.dart';

// ignore: must_be_immutable
class CustomNavbar extends StatefulWidget {
  String iconPath;
  String label;
  int index;
  int currentIndex;
  VoidCallback onTap;

  CustomNavbar({
    super.key,
    required this.iconPath,
    required this.label,
    required this.index,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  Color primaryColor = const Color(0xff7060E5);

  Color baseColor = const Color(0xffFFFFFF);

  Color secondaryColor = const Color(0xff8C8C8C);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 90,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              widget.iconPath.toString(),
              height: 24,
              width: 24,
              color: widget.index == widget.currentIndex
                  ? primaryColor
                  : secondaryColor,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.label.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: semibold,
                color: widget.index == widget.currentIndex
                    ? primaryColor
                    : secondaryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 12,
              width: 25,
              decoration: BoxDecoration(
                color: widget.index == widget.currentIndex
                    ? primaryColor
                    : baseColor,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(100),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
