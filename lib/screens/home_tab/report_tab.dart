import 'package:flutter/material.dart';
import 'package:astro_tak/widgets/bottom_bar_title.dart';
import '../../constants/constants.dart';





class ReportTab extends StatelessWidget {
  const ReportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBar(label: "Reports", iconPath: icReports),
    );
  }
}