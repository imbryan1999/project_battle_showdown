import 'package:flutter/material.dart';
import 'package:project_mark1/screens/credential_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();

    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(top: 50.0, left: 8, right: 8, bottom: 8),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Hemant Shrestha\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 18.0)),
                      TextSpan(
                          text: '@userID',
                          style:
                              TextStyle(color: Colors.green, fontSize: 15.0)),
                    ])),
                    const SizedBox(
                      height: 8,
                    ),
                    Image.asset(
                      'assets/icons/user_icon.png',
                      width: 70,
                      height: 70,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: editingController,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        hintText: 'Search here',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  title: const Text(
                    'Account',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/user_icon.png'),
                  trailing: const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/dashboard_icon.png'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'My Wallet',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/wallet_icon.png'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'My Statistics',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset(
                    'assets/icons/statistics_icon.png',
                    height: 18,
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Notification',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: const Icon(
                    Icons.notifications_on_sharp,
                    // Icons.event_note_sharp,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Refer and Earn',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset(
                    'assets/icons/refer_earn_icon.png',
                    height: 26,
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'My Reward',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/reward_icon.png'),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Important Guidelines',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: const Icon(
                    Icons.event_note_sharp,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Customer Support',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/customer_icon.png'),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'About Us',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset(
                    'assets/icons/about_icon.png',
                    height: 18,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Share App',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: const Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Legality',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: Image.asset('assets/icons/legality_icon.png'),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  leading: const Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/home');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CredentialScreen()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
