import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_looding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksFailure) {
          return CustomError(errorrMassage: state.errorMassage);
        }
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 5),
                    child: CustomListViewItem(
                      imageUrel:state.books[index].volumeInfo.imageLinks
                          .thumbnail ??
                          '',
                    ),
                  );
                }),
          );
        }
        return const CustomLoodingIndicator();
      },
    );
  }
}
