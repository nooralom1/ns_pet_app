/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/notification_icon.png
  AssetGenImage get notificationIcon =>
      const AssetGenImage('assets/icons/notification_icon.png');

  /// File path: assets/icons/search_icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search_icon.png');

  /// File path: assets/icons/star_yello.png
  AssetGenImage get starYello =>
      const AssetGenImage('assets/icons/star_yello.png');

  /// List of all assets
  List<AssetGenImage> get values => [notificationIcon, searchIcon, starYello];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bird.png
  AssetGenImage get bird => const AssetGenImage('assets/images/bird.png');

  /// File path: assets/images/cat.png
  AssetGenImage get cat => const AssetGenImage('assets/images/cat.png');

  /// File path: assets/images/dog.png
  AssetGenImage get dog => const AssetGenImage('assets/images/dog.png');

  /// File path: assets/images/educational1.png
  AssetGenImage get educational1 =>
      const AssetGenImage('assets/images/educational1.png');

  /// File path: assets/images/educational2.png
  AssetGenImage get educational2 =>
      const AssetGenImage('assets/images/educational2.png');

  /// File path: assets/images/fashion_details_background.png
  AssetGenImage get fashionDetailsBackground =>
      const AssetGenImage('assets/images/fashion_details_background.png');

  /// File path: assets/images/fish.png
  AssetGenImage get fish => const AssetGenImage('assets/images/fish.png');

  /// File path: assets/images/food1.png
  AssetGenImage get food1 => const AssetGenImage('assets/images/food1.png');

  /// File path: assets/images/food2.png
  AssetGenImage get food2 => const AssetGenImage('assets/images/food2.png');

  /// File path: assets/images/food3.png
  AssetGenImage get food3 => const AssetGenImage('assets/images/food3.png');

  /// File path: assets/images/game1.png
  AssetGenImage get game1 => const AssetGenImage('assets/images/game1.png');

  /// File path: assets/images/game2.png
  AssetGenImage get game2 => const AssetGenImage('assets/images/game2.png');

  /// File path: assets/images/game3.png
  AssetGenImage get game3 => const AssetGenImage('assets/images/game3.png');

  /// File path: assets/images/p-fashion2.png
  AssetGenImage get pFashion2 =>
      const AssetGenImage('assets/images/p-fashion2.png');

  /// File path: assets/images/p_fashion1.png
  AssetGenImage get pFashion1 =>
      const AssetGenImage('assets/images/p_fashion1.png');

  /// File path: assets/images/p_fashion3.png
  AssetGenImage get pFashion3 =>
      const AssetGenImage('assets/images/p_fashion3.png');

  /// File path: assets/images/poster.png
  AssetGenImage get poster => const AssetGenImage('assets/images/poster.png');

  /// File path: assets/images/purple small card.png
  AssetGenImage get purpleSmallCard =>
      const AssetGenImage('assets/images/purple small card.png');

  /// File path: assets/images/service1.png
  AssetGenImage get service1 =>
      const AssetGenImage('assets/images/service1.png');

  /// File path: assets/images/service2.png
  AssetGenImage get service2 =>
      const AssetGenImage('assets/images/service2.png');

  /// File path: assets/images/slider image.png
  AssetGenImage get sliderImage =>
      const AssetGenImage('assets/images/slider image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bird,
        cat,
        dog,
        educational1,
        educational2,
        fashionDetailsBackground,
        fish,
        food1,
        food2,
        food3,
        game1,
        game2,
        game3,
        pFashion2,
        pFashion1,
        pFashion3,
        poster,
        purpleSmallCard,
        service1,
        service2,
        sliderImage
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
