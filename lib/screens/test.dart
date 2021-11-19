import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_mark1/widgets/bottom_navigation.dart';
import 'package:project_mark1/widgets/drawer_menu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int actIndex = 0;
  int currentIndex = 0;
  bool showTextField = false;

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
                icon:
                    const ImageIcon(AssetImage('assets/icons/menu_icon.png')));
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                showTextField = !showTextField;
              });
            },
            tooltip: 'Search',
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            elevation: 2.0,
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(70, 20, 10, 60),
                child: const Text(
                  'Announcement',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 10, 100, 5),
                child: const Text(
                  'Genres',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: const [
                  CardPubg(),
                  CardSec(),
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enableInfiniteScroll: false,
                  reverse: false,
                  onPageChanged: (index, reason) =>
                      setState(() => actIndex = index),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicator(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
                child: const Text(
                  'Featured Games',
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    //for border radius
                    child: Image.asset('assets/images/l1.png'),
                    borderRadius: BorderRadius.circular(40.5),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(2, 1, 200, 1),
                    child: Text(
                      'PUBG MOBILE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(1, 1, 210, 1),
                    child: Text(
                      'NEW STATE',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset('assets/images/l2.png'),
                    borderRadius: BorderRadius.circular(40.5),
                  ),
                  const Text(
                    'FREEFIRE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    'GARENA',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                      child: Image.asset('assets/images/l3.png'),
                      borderRadius: BorderRadius.circular(40.0)),
                  const Text(
                    'Clash of Clans',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    'SUPERCELL',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    child: ClipRRect(
                      child: Image.asset('assets/images/l4.png'),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5)),
                  ),
                  const Text(
                    'Ori and the Will of the Wisps',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    'Cross-Platform',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  print('lmao');
                },
                splashColor: Colors.grey,
                child: Container(
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(20, 1, 200, 1),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: const Color(0xff242427),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Go to Games',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 10, 70, 10),
                child: const Text(
                  'Multiplayer Games',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: const [
                  CardGear(),
                  CardKof(),
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enableInfiniteScroll: false,
                ),
              ),
            ],
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget Indicator() => AnimatedSmoothIndicator(
        activeIndex: actIndex,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.black,
        ),
      );
}

class CardGear extends StatelessWidget {
  const CardGear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color(0xff242427),
          child: Column(
            children: [
              Image.asset(
                'assets/images/gear_of_war.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Mobile Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class CardKof extends StatelessWidget {
  const CardKof({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.greenAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/gear_of_war.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Nintendo Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class CardPubg extends StatelessWidget {
  const CardPubg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: const Color(0xff242427),
          child: Column(
            children: [
              Image.asset(
                'assets/images/gear_of_war.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Play & Earn',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class CardSec extends StatelessWidget {
  const CardSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: const Color(0xff6D5ED2),
          child: Column(
            children: [
              Image.asset(
                'assets/images/gear_of_war.png',
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            'Nintendo Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
