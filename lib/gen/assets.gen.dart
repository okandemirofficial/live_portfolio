/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesDiziyleogrenGen get diziyleogren =>
      const $AssetsImagesDiziyleogrenGen();

  /// File path: assets/images/pp.jpeg
  AssetGenImage get pp => const AssetGenImage('assets/images/pp.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [pp];
}

class $AssetsImagesDiziyleogrenGen {
  const $AssetsImagesDiziyleogrenGen();

  /// File path: assets/images/diziyleogren/ss0.png
  AssetGenImage get ss0 =>
      const AssetGenImage('assets/images/diziyleogren/ss0.png');

  /// File path: assets/images/diziyleogren/ss1.png
  AssetGenImage get ss1 =>
      const AssetGenImage('assets/images/diziyleogren/ss1.png');

  /// File path: assets/images/diziyleogren/ss2.png
  AssetGenImage get ss2 =>
      const AssetGenImage('assets/images/diziyleogren/ss2.png');

  /// File path: assets/images/diziyleogren/ss3.png
  AssetGenImage get ss3 =>
      const AssetGenImage('assets/images/diziyleogren/ss3.png');

  /// File path: assets/images/diziyleogren/ss4.png
  AssetGenImage get ss4 =>
      const AssetGenImage('assets/images/diziyleogren/ss4.png');

  /// File path: assets/images/diziyleogren/ss5.png
  AssetGenImage get ss5 =>
      const AssetGenImage('assets/images/diziyleogren/ss5.png');

  /// File path: assets/images/diziyleogren/ss6.png
  AssetGenImage get ss6 =>
      const AssetGenImage('assets/images/diziyleogren/ss6.png');

  /// List of all assets
  List<AssetGenImage> get values => [ss0, ss1, ss2, ss3, ss4, ss5, ss6];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
