import 'package:flutter/material.dart';
import 'package:profile_application/component/Card/cardfive_component.dart';
import 'package:profile_application/component/fb_btn.dart';
import 'package:profile_application/component/github_btn.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF8297AF),
      ),
      backgroundColor: const Color(0xFF8297AF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(
              height: 5,
            ),
            CardFive(),
            SizedBox(
              height: 10,
            ),
            GitHubButton(),
            FacebookButton(),
          ],
        ),
      ),
    );
  }
}
