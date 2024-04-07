import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text(
        "Home",
      ),
    ),
    const Center(
      child: Text(
        "Search",
      ),
    )
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onTap,
        destinations: const [
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
            label: "home",
          ),
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            label: "search",
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   currentIndex: _selectedIndex,
      //   onTap: _onTap,
      //   selectedItemColor: Theme.of(context).primaryColor,
      //   unselectedItemColor: Colors.blueGrey,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: FaIcon(
      //         FontAwesomeIcons.house,
      //       ),
      //       label: "Home",
      //       tooltip: "what are you",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(
      //         FontAwesomeIcons.magnifyingGlass,
      //       ),
      //       label: "search",
      //       tooltip: "what are you",
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: FaIcon(
      //     //     FontAwesomeIcons.magnifyingGlass,
      //     //   ),
      //     //   label: "search",
      //     //   tooltip: "what are you",
      //     // ),
      //     // BottomNavigationBarItem(
      //     //   icon: FaIcon(
      //     //     FontAwesomeIcons.magnifyingGlass,
      //     //   ),
      //     //   label: "search",
      //     //   tooltip: "what are you",
      //     // ),
      //     // BottomNavigationBarItem(
      //     //   icon: FaIcon(
      //     //     FontAwesomeIcons.magnifyingGlass,
      //     //   ),
      //     //   label: "search",
      //     //   tooltip: "what are you",
      //     // ),
      //   ],
      // ),
    );
  }
}


// assertionError: 무엇인가가 참 이기를 원하는 에러