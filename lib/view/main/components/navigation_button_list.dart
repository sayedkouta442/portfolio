import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  const NavigationButtonList({super.key});

  @override
  State<NavigationButtonList> createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  int selectedIndex = 0;
  //PageController? controllerListener;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selectedIndex = controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () {
                  if (controller.page!.toInt == true) {
                    setState(() {
                      selectedIndex = 0;
                    });
                  }
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Home',
                isTapped: selectedIndex == 0 ? true : false,
              ),
              //    if(!Responsive.isLargeMobile(context))
              NavigationTextButton(
                onTap: () {
                  if (controller.page!.toInt == true) {
                    setState(() {
                      selectedIndex = 1;
                    });
                  }
                  controller.animateToPage(1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'About Me',
                isTapped: selectedIndex == 1 ? true : false,
              ),
              NavigationTextButton(
                onTap: () {
                  if (controller.page!.toInt == true) {
                    setState(() {
                      selectedIndex = 2;
                    });
                  }
                  controller.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Projects',
                isTapped: selectedIndex == 2 ? true : false,
              ),
              NavigationTextButton(
                onTap: () {
                  if (controller.page!.toInt == true) {
                    setState(() {
                      selectedIndex = 3;
                    });
                  }
                  controller.animateToPage(3,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Certifications',
                isTapped: selectedIndex == 3 ? true : false,
              ),
              //    NavigationTextButton(onTap: () {}, text: 'Achievements'),
            ],
          ),
        );
      },
    );
  }
}
