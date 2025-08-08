import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.linkedin.com/in/elsayed-kouta-7183b8336/'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/sayedkouta442')),
        ),
        SocialMediaIcon(
          icon: 'assets/images/face5.svg',
          onTap: () => launchUrl(
              Uri.parse('https://www.facebook.com/elsayed.abo.kouta')),
        ),
        // const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        // const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
      ],
    );
  }
}
