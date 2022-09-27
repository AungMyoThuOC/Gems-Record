import 'package:flutter/material.dart';

import '../widget/navigation_drawer_widget.dart';

class ViewRecordPage extends StatelessWidget {
  const ViewRecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawerWidget(),
    appBar: AppBar(
      title: const Text("View All Record"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
