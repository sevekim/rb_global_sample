import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/constants/style/padding_style/all_side_paddings.dart';

class CommonErrorScreen extends StatelessWidget {
  final FlutterErrorDetails details;
  const CommonErrorScreen({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: commonAllSidePadding16,
        alignment: Alignment.center,
        child: Text(
          "Error: ${details.toString()}",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
