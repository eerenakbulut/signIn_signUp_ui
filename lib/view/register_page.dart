import 'package:flutter/material.dart';
import 'package:signin_signup_ui/core/context_extension.dart';
import 'package:signin_signup_ui/view/home_page.dart';

import '../constant/constans_page.dart';
import '../widgets/build_text_widget.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController telephoneNumberCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 40),
          Expanded(
              flex: 10,
              child: Padding(
                padding: context.horizontalPaddingLow,
                child: BuildTexfieldWidget(
                  name: 'Telephone Number',
                  controller: telephoneNumberCtrl,
                ),
              )),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: context.horizontalPaddingLow,
              child: BuildTexfieldWidget(
                name: 'User Name',
                controller: usernameCtrl,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: context.horizontalPaddingLow,
              child: BuildTexfieldWidget(
                name: 'Password',
                controller: passwordCtrl,
              ),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 7,
            child: buildLoginMethod(context),
          ),
          Spacer(
            flex: 28,
          ),
        ],
      ),
    );
  }

  Center buildLoginMethod(BuildContext context) {
    return Center(
      child: Container(
        width: context.xLargeValue * 0.8,
        height: context.largeValue,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: context.lowBorderRadius,
        ),
        child: TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())),
          child: Text("LOGIN",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: textColorlight)),
        ),
      ),
    );
  }

  Row buildRowMethod(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don't have an account ?",
          style: TextStyle(color: textColordark),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => RegisterPage())));
          },
          child: Text("SIGN UP",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: secondaryColor,
                  )),
        ),
      ],
    );
  }
}
