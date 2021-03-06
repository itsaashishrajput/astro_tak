import 'package:astro_tak/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'order_history.dart';
import 'package:astro_tak/constants/constants.dart';
import 'package:astro_tak/styles/text_style.dart';



class ProfileAndHistory extends StatefulWidget {
  const ProfileAndHistory({Key? key}) : super(key: key);

  @override
  _ProfileAndHistoryState createState() => _ProfileAndHistoryState();
}

class _ProfileAndHistoryState extends State<ProfileAndHistory> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(icIcon, height: kTextTabBarHeight),
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.00),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Logout", style: kTextStyle.copyWith(color: theme.primaryColor)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.00),
                    side: BorderSide(color: theme.primaryColor),
                  ),
                ),
              ),
            )
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: const [
              Tab(child: Text("My Profile")),
              Tab(child: Text("Order History")),
            ],
            labelColor: theme.primaryColor,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: const TabBarView(
          children: [
            MyProfile(),
            OrderHistory(),
          ],
        ),
      ),
    );
  }
}