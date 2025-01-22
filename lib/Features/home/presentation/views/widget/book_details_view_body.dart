import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal:  30.0),
      child: Column(
        children: [
           SafeArea(child: CustomAppBarBookDetails()),
        ],
      ),
    );
  }
}
