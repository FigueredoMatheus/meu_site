import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final bool isDrawer;
  const SocialMediaIcon({
    Key? key,
    required this.icon,
    required this.url,
    this.isDrawer = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launch(url),
      child: Container(
        width: isDrawer ? 30 : 35,
        height: isDrawer ? 30 : 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.5),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Center(
          child: FaIcon(
            icon,
            size: isDrawer ? 18 : 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
