import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatelessWidget {
  MainNavigationScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
              ),
              label: "Home",
              tooltip: "what are you"),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
              ),
              label: "search",
              tooltip: "what are you"),
        ],
      ),
    );
  }
}


// assertionError: 무엇인가가 참 이기를 원하는 에러