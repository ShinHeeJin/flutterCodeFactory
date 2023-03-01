import 'package:flutter/material.dart';

class RandomDiceHomeScreen extends StatefulWidget {
  const RandomDiceHomeScreen({super.key});

  @override
  State<RandomDiceHomeScreen> createState() => _RandomDiceHomeScreenState();
}

class _RandomDiceHomeScreenState extends State<RandomDiceHomeScreen>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }
}

List<Widget> renderChildren() {
  return [];
}

BottomNavigationBar renderBottomNavigation() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.edgesensor_high_outlined,
        ),
        label: '주사위',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
        ),
        label: '설정',
      ),
    ],
  );
}
