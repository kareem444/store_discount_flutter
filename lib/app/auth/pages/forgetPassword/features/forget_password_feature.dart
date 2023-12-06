import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class ForgetPasswordFeature extends StatelessWidget {
  const ForgetPasswordFeature({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please enter your email to send you a link to reset your password',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.08),
        Column(
          children: [
            const TextFormFieldWidget(
              width: 1.25,
              placeHolder: "Email",
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(RouterHelper.signInPage),
              child: const Text('Send'),
            ),
            const SizedBox(height: 15),
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
