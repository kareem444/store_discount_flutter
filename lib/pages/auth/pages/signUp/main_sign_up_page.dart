import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/auth/pages/signUp/features/sign_up_feature.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:my_flutter_app/common/widgets/logo_widget.dart';

class MainSignUpPage extends StatelessWidget {
  const MainSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      page: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: LogoWidget(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const SignUpFeature(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
