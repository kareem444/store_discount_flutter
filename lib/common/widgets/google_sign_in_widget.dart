import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';

class GoogleSignInWidget extends StatelessWidget {
  const GoogleSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.offNamed(RouterHelper.homePage);
      },
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary,
            ),
          ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.google, size: 20),
          SizedBox(width: 15),
          Text('Sign in with Google'),
        ],
      ),
    );
  }
}
