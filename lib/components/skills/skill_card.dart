import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/controllers/animation_controller.dart';
import 'package:meu_site/controllers/navigation_controller.dart';

class SkillCard extends StatefulWidget {
  final double containerWidth;
  final double containerHeight;
  final double logoSize;
  final double titleFontSize;
  final Map<String, dynamic> skill;

  const SkillCard({
    Key? key,
    required this.skill,
    required this.containerHeight,
    required this.containerWidth,
    required this.logoSize,
    required this.titleFontSize,
  }) : super(key: key);

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  double _levelBarWidth = 0;
  Color _levelBarColor = Colors.white;
  late double levelColorsInterval;

  final List<Color> colors = const [
    Color(0xFFE42500),
    Color(0xFFF86C39),
    Color(0xFFFDD13A),
    Color(0xFF84DF5E),
    Color(0xFF00AA02),
  ];

  @override
  void initState() {
    super.initState();
    levelColorsInterval = widget.containerWidth / 5;
  }

  @override
  Widget build(BuildContext context) {
    final appAnimationController = AppAnimationController();
    return Container(
      width: widget.containerWidth,
      height: widget.containerHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(4, 4),
            color: Colors.black.withOpacity(0.6),
          ),
        ],
      ),
      child: ValueListenableBuilder(
          valueListenable: appAnimationController.showSkillAnimation,
          builder: (_, __, ___) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 20,
                  child: Image.asset(
                    widget.skill['logoPath'],
                    width: widget.logoSize,
                    height: widget.logoSize,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Text(
                    widget.skill['title'],
                    style: GoogleFonts.sarabun(
                      color: Colors.white,
                      fontSize: widget.titleFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: widget.containerWidth,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.decelerate,
                    width: appAnimationController.showSkillAnimation.value
                        ? widget.skill['level'] * levelColorsInterval
                        : 0,
                    height: 10,
                    decoration: BoxDecoration(
                      color: appAnimationController.showSkillAnimation.value
                          ? colors[widget.skill['level'] - 1]
                          : Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
