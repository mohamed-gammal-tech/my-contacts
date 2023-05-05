import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String socialMediaUrl;
  StartSocialMedia({super.key, required this.socialMediaUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
            onPressed: () {
              launchUrl(Uri.parse(socialMediaUrl),
                  mode: LaunchMode.externalApplication);
            },
            child: Text('Are you sure you wanna start this app?! ')),
      ),
    );
  }
}
