import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
      final int rating;
      final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          size: 15,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
        rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 7,
        ),
        Opacity(
          opacity: 0.5,
          child: Text('($count)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
