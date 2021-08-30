import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/coding.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText( text: "Flutter Dart",),
        KnowledgeText( text: "GIT Knowledge",),
        KnowledgeText( text: "Sass, Less",),
        KnowledgeText( text: "Android Studio, Visual Studio Code",),
        KnowledgeText( text: "Commercial UX/UI experience",),
        KnowledgeText( text: "Scrum & Agile Methodology",),
      ],
    );
  }
}


class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.done_outlined,
            color: primaryColor,
            size: 24.0,
          ),
          SizedBox( width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding and design",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "JS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Bootstrap",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "UXPin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Material Design",
        ),
      ],
    );
  }
}





