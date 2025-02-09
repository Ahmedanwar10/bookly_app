import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(), => I want to get Scroll here
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return  const Padding(
            padding:EdgeInsets.symmetric(vertical: 10),
            child: //BookSellerListViewItem(bookModel: state.books[index],),
            Text('search')
          );
        });
  }
}
