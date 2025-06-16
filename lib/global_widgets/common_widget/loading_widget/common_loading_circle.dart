import 'package:flutter/material.dart';

class CommonLoadingCircle extends StatelessWidget {
  final Color? color;
  final bool isSmall;
  const CommonLoadingCircle({
    super.key,
    this.color,
    this.isSmall = false,
  });

  @override
  Widget build(BuildContext context) {
    double? size = isSmall ? 20.0 : null;

    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
