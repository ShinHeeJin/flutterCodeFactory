import 'package:flutter/material.dart';
import 'package:second/const/colors.dart';

class RandomDiceRootScreen extends StatelessWidget {
  final int number;

  const RandomDiceRootScreen({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset("asset/img/$number.png"),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Text(
          "행운의 숫자",
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          number.toString(),
          style: const TextStyle(
            color: primaryColor,
            fontSize: 60.0,
            fontWeight: FontWeight.w200,
          ),
        )
      ],
    );
  }
}
