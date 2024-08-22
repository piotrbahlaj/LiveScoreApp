import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class HomeCachedNetworkImage extends StatelessWidget {
  const HomeCachedNetworkImage({super.key, this.logo});
  final String? logo;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: logo!,
      placeholder: (context, url) => const CircularProgressIndicator(
        backgroundColor: AppTheme.secondary,
        color: AppTheme.onSecondary,
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
