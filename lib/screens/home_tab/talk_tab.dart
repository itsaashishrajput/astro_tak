
import 'package:flutter/material.dart';
import 'package:astro_tak/widgets/bottom_bar_title.dart';
import '../../constants/constants.dart';





class TalkTab extends StatelessWidget {
  const TalkTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBar(label: "Talk", iconPath: icTalk),
    );
  }
}