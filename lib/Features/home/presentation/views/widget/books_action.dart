import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              textButton: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
                onPressed: () async{
                  Uri uri = bookModel.volumeInfo.previewLink != null
                      ? Uri.parse(bookModel.volumeInfo.previewLink!)
                      : Uri.parse('https://www.google.com/');
                if (!await canLaunchUrl(uri)) {
                  throw 'Could not launch $uri';
                } else {
                  launchUrl(uri);
             }
              },
              fontSize: 16,
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              textButton: 'Preview',
            ),
          ),
        ],
      ),
    );
  }
}
