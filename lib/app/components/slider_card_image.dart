import 'package:flutter/material.dart';
import 'package:visable_challenge/app/components/image_with_shimmer.dart';
import 'package:visable_challenge/app/helper/tmdb_config.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';

class SliderCardImage extends StatelessWidget {
  const SliderCardImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            VisableColors.black,
            VisableColors.black,
            VisableColors.transparent,
          ],
          stops: [0.3, 0.5, 1],
        ).createShader(
          Rect.fromLTRB(0, 0, rect.width, rect.height),
        );
      },
      child: ImageWithShimmer(
        height: size.height * 0.6,
        width: double.infinity,
        imageUrl: '${TmdbConfig.tmdbImagePath}$imageUrl',
      ),
    );
  }
}
