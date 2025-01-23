import 'package:bookly_app/Features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
      padding:  EdgeInsets.symmetric(horizontal:  30.0),
      child: Column(
        children: [
            SafeArea(child: CustomAppBarBookDetails()),
            BookDetailsSection(),
            Expanded(child: SizedBox(height: 50,)),
            SimilarBooksSection(),
        ],
      
      ),
    ),
          ),
      ],
    );
   
  }
}
