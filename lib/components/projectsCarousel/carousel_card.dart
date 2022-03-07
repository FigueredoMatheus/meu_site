import 'package:flutter/material.dart';
import 'package:meu_site/constants/projects_description.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselCard extends StatefulWidget {
  final double screenWidth;
  const CarouselCard({Key? key, required this.screenWidth}) : super(key: key);

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  final CarouselController _controller = CarouselController();

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 735),
      width: widget.screenWidth * 0.83,
      height: widget.screenWidth * 1.35,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black,
            offset: Offset(5, 7),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.90,
                width: constraints.maxWidth,
                child: CarouselSlider(
                  items: projectsPage,
                  options: CarouselOptions(
                    enlargeCenterPage: false,
                    viewportFraction: 1.0,
                    height: constraints.maxHeight * 0.90,
                    onPageChanged: (value, _) {
                      setState(() {
                        current = value;
                      });
                    },
                  ),
                  carouselController: _controller,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.08,
                width: constraints.maxWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => _controller.previousPage(),
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    Row(
                        children: projectsPage.asMap().entries.map((entry) {
                      return InkWell(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 20,
                          height: 3,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          color:
                              current == entry.key ? Colors.white : Colors.grey,
                        ),
                      );
                    }).toList()),
                    IconButton(
                      onPressed: () => _controller.nextPage(),
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
