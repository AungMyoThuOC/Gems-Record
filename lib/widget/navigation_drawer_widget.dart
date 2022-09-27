import 'package:flutter/material.dart';
import 'package:gems_records/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

import '../model/navigation_item.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  static final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    buildMenuItem(
                      context,
                      item: NavigationItem.home,
                      text: 'Home',
                      icon: Icons.home,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    buildMenuItem(context,
                        item: NavigationItem.view_all_record,
                        text: 'View All Records',
                        icon: Icons.receipt_long),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    buildMenuItem(context,
                        item: NavigationItem.language,
                        text: 'Language',
                        icon: Icons.g_translate_outlined),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    buildMenuItem(context,
                        item: NavigationItem.change_password,
                        text: 'Change Password',
                        icon: Icons.lock_reset),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(color: Colors.black12),
                    buildMenuItem(context,
                        item: NavigationItem.about,
                        text: 'About',
                        icon: Icons.info_outline),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = Colors.red;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            )),
        onTap: () => selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
