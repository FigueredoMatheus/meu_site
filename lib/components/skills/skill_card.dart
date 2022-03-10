import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  double levelColorsInterval = 150 / 5;

  final List<Color> colors = const [
    Color(0xFFE42500),
    Color(0xFFF86C39),
    Color(0xFFFDD13A),
    Color(0xFF84DF5E),
    Color(0xFF00AA02),
  ];

  animatedLevelBar() {
    setState(() {
      _levelBarWidth = widget.skill['level'] * 30;
      _levelBarColor =
          colors[(_levelBarWidth / levelColorsInterval).round() - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => animatedLevelBar(),
      child: Container(
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
        child: Stack(
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
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeOutQuad,
                //Curves.decelerate,
                width: _levelBarWidth,
                height: 10,
                decoration: BoxDecoration(
                  color: _levelBarColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
