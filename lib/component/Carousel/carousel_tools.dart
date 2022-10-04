import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_application/component/text_component.dart';

class CarouselTools extends StatelessWidget {
  const CarouselTools({super.key});

  @override
  Widget build(BuildContext context) {
    String name_ic(index_) {
      if (index_ == 0) {
        return 'Visual Studio Code';
      } else if (index_ == 1) {
        return 'Android Studio';
      } else if (index_ == 2) {
        return 'Figma';
      } else if (index_ == 3) {
        return 'Colab';
      } else if (index_ == 4) {
        return 'Numpy';
      } else {
        return 'Pandas';
      }
    }

    final List<String> imgList = [
      'assets/images/ic_vsc.png',
      'assets/images/ic_android.png',
      'assets/images/ic_figma.png',
      'assets/images/ic_colab.png',
      'assets/images/ic_numpy.png',
      'assets/images/ic_pandas.png'
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
