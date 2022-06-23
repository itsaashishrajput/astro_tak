import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'package:astro_tak/widgets/bottom_bar_title.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBar(label: "Home", iconPath: icHome),
    );
  }
}