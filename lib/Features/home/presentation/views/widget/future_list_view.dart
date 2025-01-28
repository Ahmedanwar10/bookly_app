import 'package:bookly_app/Features/home/presentation/manager/fuatured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_looding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FutureListView extends StatelessWidget {
  const FutureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
         if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: CustomListViewItem(imageUrel:
                    state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }
                ),
          );

        }else if (state is FeaturedBooksFailure) {
          return CustomError(errorrMassage: state.errMessage);
        } else {
          return const CustomLoodingIndicator();
        }
        
        
      
      },
    );
  }
}

