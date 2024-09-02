import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageURL,
      placeholder: (context, url) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              backgroundColor: AppTheme.secondary,
              color: AppTheme.onSecondary,
            ),
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
