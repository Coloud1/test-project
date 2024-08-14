import 'package:cached_network_image/cached_network_image.dart';

class CustomCachedNetworkImage extends CachedNetworkImage {
  CustomCachedNetworkImage({
    required super.imageUrl,
    super.alignment,
    super.cacheKey,
    super.cacheManager,
    super.color,
    super.colorBlendMode,
    super.errorListener,
    super.errorWidget,
    super.fadeInCurve,
    super.fadeOutCurve,
    super.filterQuality,
    super.fit,
    super.height,
    super.width,
    super.httpHeaders,
    super.imageBuilder,
    super.imageRenderMethodForWeb,
    super.useOldImageOnUrlChange,
    super.key,
  }) : super(
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
          placeholderFadeInDuration: Duration.zero,
        );
}
