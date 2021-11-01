import 'package:flutter/material.dart';
import 'package:project_mark1/widgets/drawer_menu.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff242427),
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const ImageIcon(AssetImage('assets/icons/menu_icon.png')));
        }),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_on_sharp,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/user_icon.png',
                height: 30,
              ))
        ],
      ),
      drawer: const DrawerMenu(),
      body: SafeArea(child: Container()),
    );
  }
}
