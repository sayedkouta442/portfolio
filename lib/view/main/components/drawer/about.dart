import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(),
            //   const DrawerImage(),
            // const Spacer(),
            Text(
              'Elsayed Kouta',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            const Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w300, height: 1.5),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
