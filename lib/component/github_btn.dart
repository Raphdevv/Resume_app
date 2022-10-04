import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubButton extends StatelessWidget {
  const GitHubButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://github.com/Raphdevv');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: _launchUrl,
        child: Container(
          height: 48,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xff121111),
            )
          ], borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const Text(
            "GitHub",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
