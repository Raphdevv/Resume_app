import 'package:flutter/material.dart';
import 'package:profile_application/component/Card/cardfour_component.dart';
import 'package:profile_application/component/Card/cardone_component.dart';
import 'package:profile_application/component/Card/cardthree_component.dart';
import 'package:profile_application/component/Card/cardtwo_component.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
            Cardone(),
            SizedBox(
              height: 20,
            ),
            CardTwo(),
            SizedBox(
              height: 20,
            ),
            CardThree(),
            SizedBox(
              height: 20,
            ),
            CardFour(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
