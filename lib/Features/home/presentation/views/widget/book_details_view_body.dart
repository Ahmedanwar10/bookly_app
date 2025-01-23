import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/similar_book_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
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
           const SizedBox(height: 37,),
           const BooksAction(),
           const  Expanded(child: const SizedBox(height: 50,)),
           Align(
            alignment: Alignment.centerLeft,
             child: Text("You can also like",
             style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
             )),
           ),
           const SizedBox(height: 16,),
           const SimilarBooksListView(),
      
        ],
      
      ),
    ),
          ),
      ],
    );
   
  }
}

