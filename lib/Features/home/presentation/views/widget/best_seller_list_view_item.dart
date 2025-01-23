import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/costants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
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
                      fit: BoxFit.fill,
                       image: AssetImage(AssetsData.test2)),
                ),
              ),
            ),
            const SizedBox(width: 30,),
             Expanded(
               child: Column(
                children:  [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child:  Text('Harry Potter and the Goblet of Fire',
                    style:Styles.textStyle20.copyWith(fontFamily: kGtSpectraFine) ,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    ),
                    ),
                  const SizedBox(height: 3,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: const Text('J.K. Rowling',
                    style:Styles.textStyle14 ,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    ),
                    ),
                  const SizedBox(height: 3,),
                    SizedBox(
                       width: MediaQuery.of(context).size.width*0.5, 
                      child:  Row(
                        children:[
                          Text(
                            "19.99 €",style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                          ),
                           const Spacer(),
                           const BookRating(),
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
