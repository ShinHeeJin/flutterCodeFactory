import 'package:flutter/material.dart';
import 'package:second/screen/random_dice_root_screen.dart';
import 'package:second/screen/random_dice_setting_screen.dart';

class RandomDiceHomeScreen extends StatefulWidget {
  const RandomDiceHomeScreen({super.key});

  @override
  State<RandomDiceHomeScreen> createState() => _RandomDiceHomeScreenState();
}

class _RandomDiceHomeScreenState extends State<RandomDiceHomeScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  double threshold = 2.7;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController!.addListener(tabListner);
  }

  tabListner() {
    setState(() {});
  }

  @override
  void dispose() {
    tabController!.removeListener(tabListner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      const RandomDiceRootScreen(number: 1),
      RandomDiceSettingScreen(
          threshold: threshold, onTresholdChange: onTresholdChange)
    ];
  }

  void onTresholdChange(double val) {
    setState(() {
      threshold = val;
    });
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: tabController!.index,
      onTap: (value) {
        setState(() {
          tabController!.animateTo(value);
        });
      },
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
}
