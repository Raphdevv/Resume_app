import 'package:flutter/material.dart';
import 'package:profile_application/component/text_component.dart';

class Cardone extends StatelessWidget {
  const Cardone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(16),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 4),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                  text: 'Natthapol Chainongbua',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 28,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text: 'Mobile Developer',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              Center(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4, 32, 4, 4),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/meperson.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: TextComponent(
                    text:
                        'Now, I\'m studying at Suan Sunandha Rajabhat University and interested in working as a mobile application developer with Flutter framework.',
                    colors: const Color.fromARGB(255, 40, 47, 53),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
