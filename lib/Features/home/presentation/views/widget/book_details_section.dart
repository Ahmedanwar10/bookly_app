import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: .2 * width),
          child: const CustomListViewItem(imageUrel: 'https://d26e3f10zvrezp.cloudfront.net/Gallery/00c4166b-70e5-4ec6-a348-ce767a71696f-576x1024.webp',),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 7,
        ),
        Opacity(
          opacity: 0.7,
          child: Text("Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(height: 15),
        const BookRating(
          
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
           count: 250,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
