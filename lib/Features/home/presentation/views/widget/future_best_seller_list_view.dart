import 'package:bookly_app/Features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_looding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookFailure) {
          return CustomError(errorrMassage: state.errorMassage);
        }
        if (state is NewestBookSuccess) {
          return ListView.builder(
            
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10),
                  child: BookSellerListViewItem(bookModel: state.books[index],

                  ),
                );
              });
        }
        else {
          return const CustomLoodingIndicator();
        }
      },
    );
  }
}
