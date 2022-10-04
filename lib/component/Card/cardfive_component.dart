import 'package:flutter/material.dart';
import 'package:profile_application/component/text_component.dart';

class CardFive extends StatelessWidget {
  const CardFive({super.key});

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
          padding: const EdgeInsetsDirectional.fromSTEB(24, 40, 24, 4),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                  text: 'ABOUT ME',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 28,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text:
                      'I\'m a Student from Suan Sunandha Rajabhat University of Computer Science, I\'m interested in application developer with Flutter.',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              const SizedBox(
                height: 10,
              ),
              TextComponent(
                  text: 'Education',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 28,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text: '2019 - Now',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text:
                      'Suan Sunandha Rajabhat University.\nFaculty of Science and Technology, My major Computer Science.',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              const SizedBox(
                height: 10,
              ),
              TextComponent(
                  text: 'Experience Project',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 28,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text: 'Year 3 - 2021',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text:
                      '- Project The Application Food recommendation system from user favorite dishes\n- Project Dynamic Web Application General equipment for students\n- Project Compare the accuracy of predicting classifications among diabetic',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text: 'Year 4 - Now',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              TextComponent(
                  text:
                      '- Thesis Project The Application Tourism recommendation system',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
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
