import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class SignInFeature extends StatelessWidget {
  const SignInFeature({Key? key}) : super(key: key);

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
              'Please sign in to continue',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.05),
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
            ElevatedButton(
              onPressed: () => Get.offAllNamed(RouterHelper.userHomePage),
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Get.offAllNamed(RouterHelper.forgetPasswordPage),
              child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                  onPressed: () => Get.offAllNamed(RouterHelper.signUpPage),
                  child: Text(
                    'Sign Up',
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
