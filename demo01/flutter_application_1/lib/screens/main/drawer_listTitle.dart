import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle(
      {super.key,
      // for select those three line once press "Command + D"
      required this.title,
      required this.svgSrc,
      required this.press});
  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      // leading  和 title 之间的间距
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
