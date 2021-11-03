import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox.fromSize(
              size: const Size(50, 60),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                        const AssetImage('assets/icons/home_bg_icon.png'),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.home)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('Home')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox.fromSize(
              size: const Size(50, 60),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                        const AssetImage('assets/icons/wallet_bg_icon.png'),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_balance_wallet_rounded)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('Wallet')
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
              width: 42.0,
            ),
            SizedBox.fromSize(
              size: const Size(50, 60),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 20.0,
                      backgroundImage:
                          const AssetImage('assets/icons/notifi_bg_icon.png'),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications))),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('Alerts')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox.fromSize(
              size: const Size(50, 60),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                        const AssetImage('assets/icons/play_bg_icon.png'),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.play_arrow)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('Video')
                ],
              ),
            ),
          ],
        ),
      ),
      color: Colors.amber,
    );
  }
}
