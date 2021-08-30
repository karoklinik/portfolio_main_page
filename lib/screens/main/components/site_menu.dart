import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_profile/screens/main/components/social_section.dart';
import 'area_info_text.dart';
import 'knowledges.dart';
import 'myInfo.dart';

class SiteMenu extends StatelessWidget {
  const SiteMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
                child: Column(
                  children: [
                    MyInfo(),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(defaultPadding),
                        child: Column(
                          children: [
                            AreaInfoText(
                              title: "Residence",
                              text: "Poland, Lower Silesia",
                            ),
                            AreaInfoText(
                              title: "City",
                              text: "Wałbrzych",
                            ),
                            AreaInfoText(
                              title: "Age",
                              text: "26",
                            ),
                            Skills(),
                            SizedBox(height: defaultPadding),
                            Coding(),
                            Knowledges(),
                            Divider(),
                            SizedBox(height: defaultPadding / 2),
                            TextButton(onPressed: () {
                            },
                                child: FittedBox(
                                  child: Row(
                                    children: [
                                      Text("Download CV",
                                      style: TextStyle(
                                        color: Theme.of(context).textTheme.bodyText1!.color),
                                      ),
                                      SizedBox(width: defaultPadding / 2),
                                      Icon(
                                        Icons.download,
                                        color: bodyTextColor,
                                        size: 24.0,
                                      ),//SvgPicture.asset("assets/icons/download.svg"),
                                    ],
                                  ),
                                ),
                            ),
                            SocialsSection()

                          ],
                    ),
            ),
          ),
      ],
    ),
        )
    );
  }
}

