import 'package:flutter/material.dart';
import 'package:flutter_application_1/start.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaUrl;

  SocialMediaIcon({
    Key? key,
    required this.socialMedia,
    required this.socialMediaUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 40,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    StartSocialMedia(socialMediaUrl: socialMediaUrl)),
          );
        },
      ),
    );
  }
}
