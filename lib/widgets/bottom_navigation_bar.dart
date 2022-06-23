import 'package:astro_tak/widgets/bottom_bar_title.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../styles/text_style.dart';

class BottomNavigatorBar extends StatefulWidget {
  final void Function(int index) onTap;
  final Color backgroundColor;
  final int currentIndex;
  const BottomNavigatorBar({Key? key, required this.onTap, required this.backgroundColor, required this.currentIndex}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigatorBarState createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  late List<Widget> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      const BottomBar(label: "Home", iconPath: icHome),
      const BottomBar(label: "Talk", iconPath: icTalk),
      const BottomBar(label: "Ask Question", iconPath: icAsk),
      const BottomBar(label: "Reports", iconPath: icReports),
      const BottomBar(label: "Chat", iconPath: icChat),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
        ),
        padding: const EdgeInsets.all(5.00),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(height: 3.00),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_items.length, (index) {
                  return Flexible(
                    child: ScaleTransition(
                      scale: widget.currentIndex == index ? const AlwaysStoppedAnimation<double>(1.1) : const AlwaysStoppedAnimation<double>(1.0),
                      child: InkWell(
                        child: _items[index],
                        onTap: () => widget.onTap(index),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}   