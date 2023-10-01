import 'package:chat_project/Screens/channel/channel.dart';
import 'package:chat_project/Screens/chat/chat.dart';
import 'package:chat_project/Screens/profile/profile.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> pages=<Widget>[
    Chat(),
   Channel(),
   Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        items: const [
          BottomNavigationBarItem(
            label: "Chat",
              icon: Icon(Icons.message)),
          BottomNavigationBarItem(
              label: "Channel",
              icon: Icon(Icons.group_work)),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_box)),
        ],
      ),

    );
  }
}
