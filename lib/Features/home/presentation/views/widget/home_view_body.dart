import 'package:bookly_app/Features/home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/future_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarWidget(),
          FutureListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AssetsData.test2)),
              ),
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
