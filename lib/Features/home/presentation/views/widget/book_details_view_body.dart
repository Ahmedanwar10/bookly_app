import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SafeArea(child: CustomAppBarBookDetails()),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                const SimilarBooksSection(
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
