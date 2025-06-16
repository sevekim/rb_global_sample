import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/widgets/common_widget/loading_widget/common_loading_circle.dart';
import 'package:flutter_excercise/src/widgets/common_widget/structure_widget/common_scaffold.dart';

class CommonLoadingScreen extends StatelessWidget {
  const CommonLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffoldStructure(
      child: CommonLoadingCircle(),
    );
  }
}
