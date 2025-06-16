import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/style/padding_style/all_side_paddings.dart';
import 'package:flutter_excercise/core/routes/app_route_enum.dart';
import 'package:flutter_excercise/src/widgets/common_widget/structure_widget/common_scaffold.dart';
import 'package:flutter_excercise/src/screens/home/ui/home_listing.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonScaffoldStructure(
      padding: commonNoPadding,
      appBar: AppBar(
        title: const Text('RB Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              GoRouter.of(context).pushNamed(
                AppRouteEnum.settings.name,
              );
            },
          ),
        ],
      ),
      child: const HomeScreenListingView(),
    );
  }
}
