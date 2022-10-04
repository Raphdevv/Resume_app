import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.facebook.com/twilightwithu/');

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
              color: Color(0xff4267B2),
            )
          ], borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
