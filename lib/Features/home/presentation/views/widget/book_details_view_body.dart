import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
           const SizedBox(height: 45,),
            Text("The Jungle Book",
           style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold),),
           const SizedBox(height: 7,),
            Opacity(
              opacity: 0.7,
              child: Text("Rudyard Kipling" ,
              style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              )),
            ),
            const SizedBox(height: 15),
           const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
           ),

        ],

      ),
    );
  }
}
