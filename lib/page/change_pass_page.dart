import 'package:flutter/material.dart';

import '../widget/navigation_drawer_widget.dart';

class ChangePassPage extends StatelessWidget {
  const ChangePassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text("Change Password"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
