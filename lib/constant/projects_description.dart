import 'package:flutter/material.dart';
import 'package:meu_site/components/projectsCarousel/carousel_page.dart';

List<Map<String, dynamic>> projectsDescription = [
  {
    'imgList': [
      'assets/ayan engenharia/ayan 1.png',
    ],
    'accessLink': ['www.ayanengenharia.com', 'www.ayanengenharia.com.br'],
    'features': ['Flutter/Dart', 'Firebase', 'EmailJs'],
  },
  {
    'imgList': [
      'assets/nix app/Nix 1.png',
    ],
    'accessLink': [
      'https://play.google.com/store/apps/details?id=com.guinter.nix'
    ],
    'features': ['Flutter/Dart', 'Firebase', 'Facebook auth'],
  },
];

List<Widget> projectsPage = [
  SmallCarouselPage(
    project: projectsDescription[0],
  ),
  SmallCarouselPage(
    project: projectsDescription[1],
  ),
];
