/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_heart_border.svg
  String get icHeartBorder => 'assets/icons/ic_heart_border.svg';

  /// File path: assets/icons/ic_heart_filled.svg
  String get icHeartFilled => 'assets/icons/ic_heart_filled.svg';

  /// File path: assets/icons/ic_location.svg
  String get icLocation => 'assets/icons/ic_location.svg';

  /// File path: assets/icons/ic_nav_cart.svg
  String get icNavCart => 'assets/icons/ic_nav_cart.svg';

  /// File path: assets/icons/ic_nav_favorites.svg
  String get icNavFavorites => 'assets/icons/ic_nav_favorites.svg';

  /// File path: assets/icons/ic_nav_home.svg
  String get icNavHome => 'assets/icons/ic_nav_home.svg';

  /// File path: assets/icons/ic_nav_news.svg
  String get icNavNews => 'assets/icons/ic_nav_news.svg';

  /// File path: assets/icons/ic_nav_wallet.svg
  String get icNavWallet => 'assets/icons/ic_nav_wallet.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// List of all assets
  List<dynamic> get values => [
        icHeartBorder,
        icHeartFilled,
        icLocation,
        icNavCart,
        icNavFavorites,
        icNavHome,
        icNavNews,
        icNavWallet,
        icSearch,
        search
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
