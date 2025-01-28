import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomListViewItem(imageUrel: 'https://d26e3f10zvrezp.cloudfront.net/Gallery/00c4166b-70e5-4ec6-a348-ce767a71696f-576x1024.webp',),
            );
          }),
    );
  }
}
