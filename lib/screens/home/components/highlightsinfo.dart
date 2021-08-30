import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/components/animated_counter.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 119,
                      text: "+",
                    ),
                    label: "Certificates",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 119,
                      text: "+",
                    ),
                    label: "Github projects",
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 119,
                      text: "+",
                    ),
                    label: "UX/UI projects",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 119,
                      text: "+",
                    ),
                    label: "Commercial projects",
                  ),
                ],
              )

            ],
          )
          : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "+",
                ),
                label: "Certificates",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "+",
                ),
                label: "Github projects",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "+",
                ),
                label: "UX/UI projects",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "+",
                ),
                label: "Commercial projects",
              ),
            ],
          ),
    );
  }
}