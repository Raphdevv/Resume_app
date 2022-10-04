import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_application/component/text_component.dart';

class CarouselSysandframe extends StatelessWidget {
  const CarouselSysandframe({super.key});

  @override
  Widget build(BuildContext context) {
    String name_ic(index_) {
      if (index_ == 0) {
        return 'Firebase';
      } else {
        return 'Flutter';
      }
    }

    final List<String> imgList = [
      'assets/images/ic_firebase.png',
      'assets/images/ic_flutter.png'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(0, 255, 255, 255)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Center(
                            child: TextComponent(
                              text: name_ic(imgList.indexOf(item)),
                              colors: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1.0,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    );
  }
}
