import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/widgets/common_widget/image_widget/common_cached_image_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonCircleAvatarImageWidget extends ConsumerWidget {
  final String? imageURL;
  final double? size;
  const CommonCircleAvatarImageWidget({
    super.key,
    this.size,
    this.imageURL,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipOval(
      child: CommonCacheNetworkImage(
        imageURL: imageURL,
        size: size ?? 56.0,
      ),
    );
  }
}
