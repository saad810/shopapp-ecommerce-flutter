import 'package:flutter/material.dart';
import 'package:shopapp/components/bottom_nav_bar.dart';
import 'package:shopapp/pages/cart_page.dart';
import 'package:shopapp/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// keep track of selected index
  int selectedIndex = 0;

  void navigateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    //shop page

    const ShopPage(),
    const MyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/assets/images/logo.png',
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[900],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.shop,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Shop',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateToPage(index),
      ),
      body: pages[selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.menu),
              ));
        }),
      ),
    );
  }
}
