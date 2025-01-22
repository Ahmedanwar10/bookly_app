import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  30.0),
      child: Column(
        children: [
           const SafeArea(child: CustomAppBarBookDetails()),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: .2*width),
             child: const CustomListViewItem(),
           ),
        ],
      ),
    );
  }
}
