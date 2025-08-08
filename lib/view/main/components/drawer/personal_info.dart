import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '+20 1010220187'),
        AreaInfoText(title: 'Email', text: 'koutaelsayed@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: 'in/elsayed-kouta-7183b8336/'),
        AreaInfoText(title: 'Github', text: 'github.com/sayedkouta442'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
