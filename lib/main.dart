import 'package:flutter/material.dart';
import 'package:gems_records/model/navigation_item.dart';
import 'package:gems_records/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

import 'page/about.dart';
import 'page/change_pass_page.dart';
import 'page/language_page.dart';
import 'page/home_page.dart';
import 'page/view_all_record_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gems Records',
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const HomePage(),
        // },
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // var currentPage = DrawerSections.Home;
  @override
  Widget build(BuildContext context) => buildPage();

  Widget buildPage() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.home:
        return const HomePage();
      case NavigationItem.view_all_record:
        return const ViewRecordPage();
      case NavigationItem.language:
        return const LanguagePage();
      case NavigationItem.change_password:
        return const ChangePassPage();
      case NavigationItem.about:
        return const AboutPage();
    }
  }
}


//  return Scaffold(
//       body: Container(
//       // drawer: Drawer(
//       //   child: SingleChildScrollView(
//       //     child: Container(
//       //       child: Column(
//       //         children: [
               
//       //         ],
//       //       ),
//       //     ),
//       //   ),
//       // ),
//       ),
//     );

//   Widget MyDrawerList() {
//     return Container(
//       padding: EdgeInsets.only(top: 15),
//       child: Column(
//         children: [
//           menuItem(1, "Home", Icons.home,
//               currentPage == DrawerSections.Home ? true : false),
//           const Divider(),
//           menuItem(2, "View all Records", Icons.receipt_long,
//               currentPage == DrawerSections.View_all_Records ? true : false),
//           const Divider(),
//           menuItem(3, "Language", Icons.g_translate_outlined,
//               currentPage == DrawerSections.Language ? true : false),
//           const Divider(),
//           menuItem(4, "Change Password", Icons.lock_reset,
//               currentPage == DrawerSections.Change_Password ? true : false),
//           const Divider(),
//           menuItem(5, "About", Icons.info_outline,
//               currentPage == DrawerSections.About ? true : false),
//         ],
//       ),
//     );
//   }

//   Widget menuItem(int id, String title, IconData icon, bool selected) {
//     return Material(
//       color: selected ? Colors.grey[300] : Colors.transparent,
//       child: InkWell(
//         onTap: () {
//           Navigator.pop(context);
//           setState(() {
//             if (id == 1) {
//               currentPage = DrawerSections.Home;
//             } else if (id == 2) {
//               currentPage == DrawerSections.View_all_Records;
//             } else if (id == 3) {
//               currentPage == DrawerSections.Language;
//             } else if (id == 4) {
//               currentPage == DrawerSections.Change_Password;
//             } else if (id == 5) {
//               currentPage == DrawerSections.About;
//             }
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Icon(
//                   icon,
//                   size: 20,
//                   color: Colors.red,
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// enum DrawerSections {
//   // ignore: constant_identifier_names
//   Home,
//   // ignore: constant_identifier_names
//   View_all_Records,
//   // ignore: constant_identifier_names
//   Language,
//   // ignore: constant_identifier_names
//   Change_Password,
//   // ignore: constant_identifier_names
//   About,
// }

// var container;
//     if (currentPage == DrawerSections.Home) {
//       container = const HomePage();
//     } else if (currentPage == DrawerSections.View_all_Records) {
//       container = const ViewRecordPage();
//     } else if (currentPage == DrawerSections.Language) {
//       container = const LanguagePage();
//     } else if (currentPage == DrawerSections.Change_Password) {
//       container = const ChangePassPage();
//     } else if (currentPage == DrawerSections.About) {
//       container = const AboutPage();
//     }