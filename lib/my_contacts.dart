import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/contact_grid.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/social_media_icon.dart';

class MyContact extends StatelessWidget {
  MyContact({super.key});

  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/',
    'instagram.png': 'https://www.instagram.com/',
    'whatsapp.png': 'https://wa.me/15551234567/',
    'linkedin.png': 'https://www.linkedin.com/',
    'youtube.png': 'https://www.youtube.com/',
    'twitter.png': 'https://twitter.com/'
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 7, 30),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/boyim.jpg'),
                  radius: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Yusuf Mohamed',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+201099646666',
                      style: TextStyle(fontSize: 22, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel: +201099646666'));
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ContactGrid(socialMedia: socialMedia),
              ],
            ),
          ),
        ),
      ),
    );
  }
}