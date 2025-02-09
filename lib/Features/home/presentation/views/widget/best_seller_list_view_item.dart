import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/costants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookSellerListViewItem extends StatelessWidget {
  const BookSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView,
        extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          CustomListViewItem(
                imageUrel: bookModel.volumeInfo.imageLinks.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSpectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:  Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                         BookRating(
                          rating: bookModel.volumeInfo.averageRating??0,
                           count: bookModel.volumeInfo.ratingsCount ??0,
                           ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
