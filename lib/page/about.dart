import 'package:flutter/material.dart';

import '../widget/navigation_drawer_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text("About"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
