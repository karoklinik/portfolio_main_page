import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(
                  FontAwesomeIcons.linkedin,
                  size: 22,
                  color: bodyTextColor
              ),
              tooltip: 'Linkedin',
              onPressed: () {
                //urlLauncher
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                  FontAwesomeIcons.twitter,
                  size: 22,
                  color: bodyTextColor
              ),
              tooltip: 'Twitter',
              onPressed: () {
                //urlLauncher
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                  FontAwesomeIcons.github,
                  size: 22,
                  color: bodyTextColor
              ),
              tooltip: 'Github',
              onPressed: () {
                //urlLauncher
              },
            ),

            SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                  FontAwesomeIcons.dribbble,
                  size: 22,
                  color: bodyTextColor
              ),
              tooltip: 'Dribbble',
              onPressed: () {
                //urlLauncher
              },
            ),

          ],
        ),
      ),
    );
  }
}