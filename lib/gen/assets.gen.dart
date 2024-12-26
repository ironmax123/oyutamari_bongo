/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBgmGen {
  const $AssetsBgmGen();

  /// File path: assets/bgm/cat_life.mp3
  String get catLife => 'assets/bgm/cat_life.mp3';

  /// File path: assets/bgm/chillyu.mp3
  String get chillyu => 'assets/bgm/chillyu.mp3';

  /// File path: assets/bgm/fuwafuwa_ohuro.mp3
  String get fuwafuwaOhuro => 'assets/bgm/fuwafuwa_ohuro.mp3';

  /// List of all assets
  List<String> get values => [catLife, chillyu, fuwafuwaOhuro];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/button1.png
  AssetGenImage get button1 => const AssetGenImage('assets/images/button1.png');

  /// File path: assets/images/button2.png
  AssetGenImage get button2 => const AssetGenImage('assets/images/button2.png');

  /// File path: assets/images/button3.png
  AssetGenImage get button3 => const AssetGenImage('assets/images/button3.png');

  /// File path: assets/images/button4.png
  AssetGenImage get button4 => const AssetGenImage('assets/images/button4.png');

  /// File path: assets/images/button5.png
  AssetGenImage get button5 => const AssetGenImage('assets/images/button5.png');

  /// File path: assets/images/button6.png
  AssetGenImage get button6 => const AssetGenImage('assets/images/button6.png');

  /// File path: assets/images/button7.png
  AssetGenImage get button7 => const AssetGenImage('assets/images/button7.png');

  /// File path: assets/images/button8.png
  AssetGenImage get button8 => const AssetGenImage('assets/images/button8.png');

  /// File path: assets/images/button9.png
  AssetGenImage get button9 => const AssetGenImage('assets/images/button9.png');

  /// File path: assets/images/danger_image.png
  AssetGenImage get dangerImage =>
      const AssetGenImage('assets/images/danger_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        button1,
        button2,
        button3,
        button4,
        button5,
        button6,
        button7,
        button8,
        button9,
        dangerImage
      ];
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/audio.mp3
  String get audio => 'assets/sounds/audio.mp3';

  /// File path: assets/sounds/se1.mp3
  String get se1 => 'assets/sounds/se1.mp3';

  /// File path: assets/sounds/se2.mp3
  String get se2 => 'assets/sounds/se2.mp3';

  /// File path: assets/sounds/se3.mp3
  String get se3 => 'assets/sounds/se3.mp3';

  /// File path: assets/sounds/se4.mp3
  String get se4 => 'assets/sounds/se4.mp3';

  /// List of all assets
  List<String> get values => [audio, se1, se2, se3, se4];
}

class Assets {
  Assets._();

  static const $AssetsBgmGen bgm = $AssetsBgmGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
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
