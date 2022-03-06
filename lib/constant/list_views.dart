import 'package:flutter/material.dart';
import 'package:meu_site/views/about_me_page.dart';
import 'package:meu_site/views/footer_page.dart';
import 'package:meu_site/views/initial_page.dart';
import 'package:meu_site/views/projects_page.dart';
import 'package:meu_site/views/skills_page.dart';

List<Widget> listViews = [
  const InitialPage(),
  const AboutMePage(),
  const SkillsPage(),
  const ProjectsPage(),
  const FooterPage(),
];
