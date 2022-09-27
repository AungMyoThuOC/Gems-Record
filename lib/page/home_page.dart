import 'package:flutter/material.dart';

import '../widget/navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text("Home"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
