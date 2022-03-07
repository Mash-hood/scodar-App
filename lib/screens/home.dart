import 'package:flutter/material.dart';
import 'package:scodar_app/screens/screens.dart';
import 'package:scodar_app/socdar_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _presentIndex = 0;

  static List<Widget> pages = <Widget>[
    MainScreen(),
    CheckBalance(),
    BuyCredit(),
    History(),
    ShareApp(),
  ];

  void _onTappingItem(int index) {
    setState(() {
      _presentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScodarTheme.kPrimaryColor,
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(width: 6),
            Image.asset('assets/bar-image.png'),
          ],
        ),
        leadingWidth: 78,
        title: Text(
          widget.title,
          style: const TextStyle(color: ScodarTheme.kSecondaryColor),
        ),
        actionsIconTheme:
            const IconThemeData(color: ScodarTheme.kSecondaryColor),
      ),
      endDrawer: Drawer(
        backgroundColor: ScodarTheme.kPrimaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const Icon(
                Icons.account_circle,
                color: ScodarTheme.kPrimaryColor,
                size: 96,
              ),
              accountName: Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text("userName"),
                ],
              ),
              accountEmail: const Text("accountEmail@gmail.com"),
              decoration: const BoxDecoration(
                color: ScodarTheme.kSecondaryColor,
              ),
            ),
            // DrawerHeader(child: child)
            ListTile(
              leading: const Icon(Icons.home,
                  color: ScodarTheme.kSecondaryColor, size: 24),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                _onTappingItem(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card,
                  color: ScodarTheme.kSecondaryColor, size: 24),
              title: const Text('Buy Credit'),
              onTap: () {
                Navigator.of(context).pop();
                _onTappingItem(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.insert_chart,
                  color: ScodarTheme.kSecondaryColor, size: 24),
              title: const Text('Credit Usage Statistics'),
              onTap: () {
                Navigator.of(context).pop();
                _onTappingItem(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings,
                  color: ScodarTheme.kSecondaryColor, size: 24),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
            const ListTile(
                leading: Icon(Icons.message,
                    color: ScodarTheme.kSecondaryColor, size: 24),
                title: Text('About')),
          ],
        ),
      ),
      body: pages[_presentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ScodarTheme.kPrimaryColor,
        elevation: 15,
        unselectedItemColor: ScodarTheme.kSecondaryColorDeem,
        selectedItemColor: ScodarTheme.kSecondaryColor,
        currentIndex: _presentIndex,
        onTap: _onTappingItem,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'CheckBalance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'BuyCredit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: 'ShareApp',
          ),
        ],
      ),
    );
  }
}
