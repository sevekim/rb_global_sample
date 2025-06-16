import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_excercise/global_widgets/common_widget/loading_widget/common_loading_circle.dart';

class CommonCacheNetworkImage extends StatelessWidget {
  const CommonCacheNetworkImage({
    super.key,
    this.imageURL,
    this.fit,
    this.size,
  });

  final String? imageURL;
  final BoxFit? fit;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageURL ?? "",
      fit: fit ?? BoxFit.cover,
      width: size,
      height: size,
      fadeOutDuration: const Duration(microseconds: 0),
      fadeInDuration: const Duration(microseconds: 0),
      errorWidget: (context, url, error) => const Icon(
        Icons.question_mark_outlined,
      ),
      progressIndicatorBuilder: (
        BuildContext context,
        String child,
        DownloadProgress? loadingProgress,
      ) {
        if (loadingProgress != null) {
          return const CommonLoadingCircle();
        }
        return const CommonLoadingCircle();
      },
    );
  }
}
