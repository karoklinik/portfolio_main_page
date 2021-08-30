import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/social_btt.dart';

import '../../../constants.dart';

class SocialsSection extends StatelessWidget {
  const SocialsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding / 2),
      color: Color(0xFF24242E),
      child: Row(
        children: [
          Spacer(),
          SocialButtons(),
          Spacer(),
        ],
      ),
    );
  }
}

