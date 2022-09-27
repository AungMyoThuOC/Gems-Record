import 'package:flutter/material.dart';

import '../widget/navigation_drawer_widget.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text("Language"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
