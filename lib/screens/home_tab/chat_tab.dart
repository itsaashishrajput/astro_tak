import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'package:astro_tak/widgets/bottom_bar_title.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBar(label: "Chat", iconPath: icChat),
    );
  }
}