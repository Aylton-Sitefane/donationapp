import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/homeclient/donate/donate_page_client_screen.dart';
import 'package:donationapp/views/homeclient/favorite/favorite_page_client_screen.dart';
import 'package:donationapp/views/homeclient/home/home_page_client_screen.dart';
import 'package:donationapp/views/homeclient/profile/client_page_profile_screen.dart';
import 'package:flutter/material.dart';


class HomeClient extends StatefulWidget {
  const HomeClient({super.key});

  @override
  State<HomeClient> createState() => _HomeClientState();
}

class _HomeClientState extends State<HomeClient> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        indicatorColor: AppColor.primaryColor,
        destinations:  const <Widget>[
          NavigationDestination( selectedIcon: Icon(Icons.home_sharp),icon: Icon(Icons.home_sharp), label: 'Home'),
          NavigationDestination( icon: Icon(Icons.favorite), label: 'Favorite'),
          NavigationDestination( icon: Icon(Icons.handshake_outlined), label: 'Doar'),
          NavigationDestination(icon: Icon(Icons.person_2), label: 'Profile'),

        ],
      ),
      body: <Widget>[
        const HomePageClientScreen(),
        const FavoritePageClientScreen(),
        const DonatePageClientScreen(),
        const ClientPageProfileScreen(),
      ][currentIndex],
    );
  }
}
