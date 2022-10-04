import 'package:flutter/material.dart';
import 'package:profile_application/component/Carousel/carousel_sysandframe.dart';
import 'package:profile_application/component/text_component.dart';

class CardFour extends StatelessWidget {
  const CardFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                  text: 'Systems & Framework',
                  colors: const Color.fromARGB(255, 40, 47, 53),
                  fontSize: 28,
                  fontWeight: FontWeight.normal),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: CarouselSysandframe(),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
