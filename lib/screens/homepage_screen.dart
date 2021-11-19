// import 'package:flutter/material.dart';
// import 'package:project_mark1/widgets/bottom_navigation.dart';
// import 'package:project_mark1/widgets/drawer_menu.dart';

// class HomePageScreen extends StatefulWidget {
//   const HomePageScreen({Key? key}) : super(key: key);

//   @override
//   _HomePageScreenState createState() => _HomePageScreenState();
// }

// class _HomePageScreenState extends State<HomePageScreen> {
//   int currentIndex = 0;
//   bool showTextField = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff242427),
//         elevation: 0,
//         leading: Builder(builder: (BuildContext context) {
//           return IconButton(
//               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//               onPressed: () => Scaffold.of(context).openDrawer(),
//               icon: const ImageIcon(AssetImage('assets/icons/menu_icon.png')));
//         }),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.notifications_on_sharp,
//                 size: 25,
//               )),
//           IconButton(
//               onPressed: () {},
//               icon: Image.asset(
//                 'assets/icons/user_icon.png',
//                 height: 30,
//               ))
//         ],
//       ),
//       drawer: const DrawerMenu(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Expanded(
//           child: FloatingActionButton(
//             backgroundColor: Colors.black,
//             onPressed: () {
//               setState(() {
//                 showTextField = !showTextField;
//               });
//             },
//             tooltip: 'Search',
//             child: const Icon(
//               Icons.search,
//               color: Colors.white,
//               size: 30,
//             ),
//             elevation: 2.0,
//           ),
//         ),
//       ),
//       bottomNavigationBar: const BottomNavigation(),
//       body: SafeArea(child: Container()),
//     );
//   }
// }
