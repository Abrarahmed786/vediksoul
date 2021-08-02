import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vediksoul/widgets/convexBar.dart';

class Gnav extends StatefulWidget {
  @override
  State<Gnav> createState() => _GnavState();
}

class _GnavState extends State<Gnav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.dashboard_outlined,
                  text: 'Category',
                ),
                GButton(
                  icon: Icons.search_rounded,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person_outlined,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.deepOrange[100],
                      child: Image.asset(
                        'images/bati.png',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pooja Samagri',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.deepOrange[100],
                      child: Image.asset('images/bati.png'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pooja Samagri',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.deepOrange[100],
                      child: Image.asset('images/bati.png'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pooja Samagri',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Image.asset(
              'images/carda.png',
              width: double.infinity,
            ),
            Image.asset(
              'images/cardb.png',
              width: double.infinity,
            ),
            Image.asset(
              'images/cardc.png',
              width: double.infinity,
            ),
            Image.asset(
              'images/carda.png',
              width: double.infinity,
            ),
            Image.asset(
              'images/cardb.png',
              width: double.infinity,
            ),
            Image.asset(
              'images/cardc.png',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
