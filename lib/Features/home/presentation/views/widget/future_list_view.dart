import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FutureListView extends StatelessWidget {
  const FutureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
