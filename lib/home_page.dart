import 'package:flutter/material.dart';
import 'package:whatsapp_adaptive_resposive_page/custom_widget/custom_text_style.dart';
import 'package:whatsapp_adaptive_resposive_page/screens/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MediaQueryData? mqData;
  bool? isLight;

  List<Widget> navPages = [
    ChatScreen(),
    Container(),
    Container(),
    Container(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    isLight = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: navPages[selectedIndex],
      bottomNavigationBar: mqData!.orientation == Orientation.portrait ?NavigationBar(
          destinations: [
        NavigationDestination(
            selectedIcon: Icon(Icons.chat_sharp),
            icon: Icon(Icons.chat_outlined),
            label: "Chats"),
        NavigationDestination(
            selectedIcon: Icon(Icons.add_circle),
            icon: Icon(Icons.add_circle_outline_outlined),
            label: "Updates"),
        NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people_outline),
            label: "Communities"),
        NavigationDestination(
            selectedIcon: Icon(Icons.call),
            icon: Icon(Icons.call),
            label: "Calls"),
      ],
        selectedIndex: selectedIndex,
        indicatorColor: Colors.green.shade100,
        onDestinationSelected: (value){
            selectedIndex = value;
            setState(() {

            });
        },
      ):null,
    );
  }
}
