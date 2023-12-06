import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StoreRatingFeature extends StatelessWidget {
  const StoreRatingFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar.builder(
        initialRating: 3,
        itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.blue,
        ),
        onRatingUpdate: (rating) {},
      ),
    );
  }
}
