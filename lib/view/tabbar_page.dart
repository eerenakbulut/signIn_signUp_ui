import 'package:flutter/material.dart';

import 'package:signin_signup_ui/view/register_page.dart';

import '../constant/constans_page.dart';
import '../core/context_extension.dart';
import 'login_page.dart';

class TabbarPage extends StatelessWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: secondaryColor,
              height: context.xLargeValue,
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 4.5),
              child:
                  buildTabbarMethod(),
            ),
             TabBarView(children: [LoginPage(), RegisterPage()])
          ],
        ),
      ),
    );
  }

  TabBar buildTabbarMethod() {
    return TabBar(indicator: BoxDecoration(color: buttonColor), tabs: [
              Tab(
                text: "Sign In",
              ),
              Tab(
                text: "Sign Up",
              )
            ]);
  }
}
