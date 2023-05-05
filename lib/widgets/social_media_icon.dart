import 'package:flutter/material.dart';
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
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepOrange)),
                    onPressed: () {
                      launchUrl(Uri.parse(socialMediaUrl),
                          mode: LaunchMode.externalApplication);
                    },
                    child: Text('Start $socialMedia'));
              });
        },
      ),
    );
  }
}
