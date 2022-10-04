import 'package:flutter/material.dart';
import 'package:profile_application/screen/aboutme_screen.dart';
import 'package:profile_application/screen/skills_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        body: TabBarView(children: [
          Skills(),
          AboutMe(),
        ]),
        bottomNavigationBar: TabBar(tabs: [
          Tab(
            text: 'Skills',
          ),
          Tab(
            text: 'About Me',
          )
        ]),
      ),
    );
  }
}
