import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isTapped;
  const NavigationTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isTapped
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
              boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, -1),
                      blurRadius: defaultPadding / 4),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: defaultPadding / 4),
                ])
          : null,
      child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
