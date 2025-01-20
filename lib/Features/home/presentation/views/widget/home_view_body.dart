import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
     CustomAppBarWidget(),
     FutureBookListView(),
    ],
    );
  }
}
class FutureBookListView extends StatelessWidget {
  const FutureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal:6),
          child:  CustomListViewItem(),
        );
      }),
    );
  }
}
