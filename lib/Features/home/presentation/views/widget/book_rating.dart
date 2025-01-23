import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,
    this.mainAxisAlignment=MainAxisAlignment.start});
    final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return  Row(
     mainAxisAlignment: mainAxisAlignment,
      children: const[
         Icon(
          size: 15,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
         SizedBox(width: 6.3,),
         Text("4.8",style: Styles.textStyle16,),
         SizedBox(width: 7,),
         Opacity(
          opacity: 0.5,
          child: Text("(2390)",style: Styles.textStyle14),
        ),
      ],
    );
  }
}