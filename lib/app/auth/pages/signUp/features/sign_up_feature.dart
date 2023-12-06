import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class SignUpFeature extends StatelessWidget {
  const SignUpFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        Column(
          children: [
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            const SizedBox(height: 20),
            Text(
              'Please sign up to continue',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.04),
        Column(
          children: [
            const TextFormFieldWidget(
              width: 1.25,
              placeHolder: "Email",
            ),
            const SizedBox(height: 15),
            const TextFormFieldWidget(
              width: 1.25,
              placeHolder: "Password",
            ),
            const SizedBox(height: 15),
            const TextFormFieldWidget(
              width: 1.25,
              placeHolder: "Confirm Password",
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(RouterHelper.userHomePage),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                  onPressed: () => Get.offNamed(RouterHelper.signInPage),
                  child: Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
