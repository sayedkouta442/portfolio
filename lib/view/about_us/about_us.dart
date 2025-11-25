import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  final List<Map<String, dynamic>> aboutSections = const [
    {
      "icon": FontAwesomeIcons.laptopCode,
      "iconColor": Color(0xFF42A5F5), // Blue
      "title": "Flutter Developer",
      "content":
          "Dedicated Flutter Developer passionate about building high-quality, fast, and visually refined mobile & web applications."
    },
    {
      "icon": FontAwesomeIcons.palette,
      "iconColor": Color(0xFFFFA726), // Orange
      "title": "UI & UX",
      "content":
          "Specialize in responsive interfaces with smooth experiences and modern design principles."
    },
    {
      "icon": FontAwesomeIcons.buildingColumns,
      "iconColor": Color(0xFFAB47BC), // Purple
      "title": "Clean Architecture",
      "content":
          "Follow clean architecture and maintainable code practices to ensure scalability and long-term project success."
    },
    {
      "icon": FontAwesomeIcons.cogs,
      "iconColor": Color(0xFF26A69A), // Teal
      "title": "State Management",
      "content":
          "Experienced with Bloc & Cubit for predictable, robust, and organized app state handling."
    },
    {
      "icon": FontAwesomeIcons.globe,
      "iconColor": Color(0xFFFF7043), // Coral
      "title": "API Integration",
      "content":
          "Skilled in integrating APIs seamlessly to deliver dynamic and reliable app functionality."
    },
    {
      "icon": FontAwesomeIcons.rocket,
      "iconColor": Color(0xFFFFCA28), // Yellow
      "title": "Goal",
      "content":
          "I love turning ideas into real products that feel great to use—combining performance, clean code, and user-focused design."
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    bool isSmallScreen = screenSize.width < 600;
    bool isMediumScreen = screenSize.width >= 600 && screenSize.width < 1200;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About Me ✨',
            style: TextStyle(
              fontSize: isSmallScreen ? 34 : (isMediumScreen ? 44 : 56),
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: const [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isSmallScreen
                  ? screenSize.width * 0.9
                  : (isMediumScreen
                      ? screenSize.width * 0.65
                      : screenSize.width * 0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: aboutSections
                  .map(
                    (section) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            section['icon'],
                            color: section['iconColor'],
                            size: isSmallScreen ? 22 : 26,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  section['title'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: isSmallScreen ? 16 : 18,
                                    color: Colors.white,
                                    shadows: const [
                                      Shadow(
                                        color: Colors.black26,
                                        offset: Offset(0.5, 0.5),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  section['content'],
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 15 : 17,
                                    color: Colors.white70,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 12),
          const ContactButton(),
        ],
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse('https://wa.me/201010220187'));
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 50,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultPadding),
            gradient: LinearGradient(
              colors: [
                Colors.pink.shade400,
                Colors.blue.shade900,
              ],
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.blue, offset: Offset(0, -1), blurRadius: 2),
              BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 2),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.greenAccent,
                size: 16,
              ),
              const SizedBox(width: defaultPadding / 4),
              Text(
                'Contact Me',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
