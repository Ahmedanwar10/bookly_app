import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errorrMassage});
  final String  errorrMassage;
  @override
  Widget build(BuildContext context) {
    return Text(
        errorrMassage,
         style: Styles.textStyle18,
    );
  }
}