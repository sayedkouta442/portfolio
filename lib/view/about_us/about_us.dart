import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  final String aboutMeContent = """
I'm Elsayed Kouta, a passionate and detail-oriented Flutter Developer dedicated to crafting high-performing and visually appealing mobile and web applications. 🚀 With a solid foundation in Dart and mobile UI/UX, I specialize in building responsive and scalable solutions, ensuring a seamless and delightful user experience. My expertise extends to clean architecture principles, state management with Bloc and Cubit, and robust API integrations. I'm adept at leveraging technologies like Firebase, Supabase, Hive, and SQLite to create dynamic and efficient applications. Committed to clean code and innovative problem-solving, I thrive in collaborative environments and am eager to contribute to impactful, user-focused projects. Let's transform your ideas into reality! 💡📱💡
""";

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    bool isSmallScreen = screenSize.width < 600;
    bool isMediumScreen = screenSize.width >= 600 && screenSize.width < 1200;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'About Me ✨',
          style: TextStyle(
              fontSize: isSmallScreen ? 30 : (isMediumScreen ? 40 : 50),
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.5),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Container(
          constraints: BoxConstraints(
            maxWidth: isSmallScreen
                ? screenSize.width * 0.9
                : (isMediumScreen
                    ? screenSize.width * 0.7
                    : screenSize.width * 0.5),
          ),
          child: Text(
            aboutMeContent,
            style: TextStyle(
              fontSize: isSmallScreen ? 16 : (isMediumScreen ? 18 : 20),
              color: Colors.white70,
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // const SizedBox(height: 20),
        const ContactButton(),
        // ElevatedButton(
        //   onPressed: () {
        //     // Add your contact me action here
        //     print('Contact Me Button Pressed!');
        //   },
        //   style: ElevatedButton.styleFrom(
        //     padding: EdgeInsets.symmetric(
        //       horizontal: isSmallScreen ? 40 : 60,
        //       vertical: isSmallScreen ? 18 : 22,
        //     ),
        //     backgroundColor: const Color(0xFF42A5F5), // A shade of blue
        //     foregroundColor: Colors.white,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     elevation: 5, // Add some shadow for depth
        //   ),
        //   child: Text(
        //     'Contact Me',
        //     style: TextStyle(fontSize: isSmallScreen ? 16 : 20),
        //   ),
        // ),
      ],
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
            height: 60,
            width: 150,
            decoration: BoxDecoration(
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
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  'Contact Me',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
