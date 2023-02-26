import 'package:flutter/material.dart';

class UnIHomeScreen extends StatefulWidget {
  const UnIHomeScreen({super.key});

  @override
  State<UnIHomeScreen> createState() => _UnIHomeScreenState();
}

class _UnIHomeScreenState extends State<UnIHomeScreen> {
  DateTime firstDay = DateTime.now();

  void onHeartPressed() {
    setState(() {
      firstDay = firstDay.subtract(const Duration(days: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
              onHeartPressed: onHeartPressed,
              firstDay: firstDay,
            ),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }
}

class _DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  const _DDay({
    required this.onHeartPressed,
    required this.firstDay,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 16.0),
          Text(
            "U & I",
            style: textTheme.displayLarge,
          ),
          const SizedBox(height: 16.0),
          Text(
            "우리 처음 만난날",
            style: textTheme.bodyLarge,
          ),
          Text(
            '${firstDay.year}.${firstDay.month}.${firstDay.day}',
            style: textTheme.bodyMedium,
          ),
          const SizedBox(height: 16.0),
          IconButton(
            onPressed: onHeartPressed,
            icon: const Icon(
              Icons.favorite,
            ),
            iconSize: 60.0,
            color: Colors.red,
          ),
          const SizedBox(height: 16.0),
          Text(
            'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
            style: textTheme.displayMedium,
          )
        ],
      ),
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "asset/img/middle_image.png",
      height: MediaQuery.of(context).size.height / 2.2,
    );
  }
}
