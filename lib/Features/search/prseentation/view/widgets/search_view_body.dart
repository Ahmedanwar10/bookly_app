import 'package:bookly_app/Features/search/prseentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/prseentation/view/widgets/search_result.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text(
                  "Search result",
                  style: Styles.textStyle18,
                ),
          SizedBox(height: 6,),   
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

