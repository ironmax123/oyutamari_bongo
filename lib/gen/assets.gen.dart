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

  /// File path: assets/images/026.png
  AssetGenImage get a026 => const AssetGenImage('assets/images/026.png');

  /// File path: assets/images/circle_green.png
  AssetGenImage get circleGreen =>
      const AssetGenImage('assets/images/circle_green.png');

  /// File path: assets/images/circle_pink.png
  AssetGenImage get circlePink =>
      const AssetGenImage('assets/images/circle_pink.png');

  /// File path: assets/images/circle_red_button.png
  AssetGenImage get circleRedButton =>
      const AssetGenImage('assets/images/circle_red_button.png');

  /// File path: assets/images/circle_yellow.png
  AssetGenImage get circleYellow =>
      const AssetGenImage('assets/images/circle_yellow.png');

  /// File path: assets/images/danger_image.png
  AssetGenImage get dangerImage =>
      const AssetGenImage('assets/images/danger_image.png');

  /// File path: assets/images/fan_button.png
  AssetGenImage get fanButton =>
      const AssetGenImage('assets/images/fan_button.png');

  /// File path: assets/images/handle_blue.png
  AssetGenImage get handleBlue =>
      const AssetGenImage('assets/images/handle_blue.png');

  /// File path: assets/images/handle_red.png
  AssetGenImage get handleRed =>
      const AssetGenImage('assets/images/handle_red.png');

  /// File path: assets/images/light_button.png
  AssetGenImage get lightButton =>
      const AssetGenImage('assets/images/light_button.png');

  /// File path: assets/images/mini_button.png
  AssetGenImage get miniButton =>
      const AssetGenImage('assets/images/mini_button.png');

  /// File path: assets/images/normal_button.png
  AssetGenImage get normalButton =>
      const AssetGenImage('assets/images/normal_button.png');

  /// File path: assets/images/round_button.png
  AssetGenImage get roundButton =>
      const AssetGenImage('assets/images/round_button.png');

  /// File path: assets/images/switch_off.png
  AssetGenImage get switchOff =>
      const AssetGenImage('assets/images/switch_off.png');

  /// File path: assets/images/switch_on.png
  AssetGenImage get switchOn =>
      const AssetGenImage('assets/images/switch_on.png');

  /// File path: assets/images/temp_down.png
  AssetGenImage get tempDown =>
      const AssetGenImage('assets/images/temp_down.png');

  /// File path: assets/images/temp_up.png
  AssetGenImage get tempUp => const AssetGenImage('assets/images/temp_up.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a026,
        circleGreen,
        circlePink,
        circleRedButton,
        circleYellow,
        dangerImage,
        fanButton,
        handleBlue,
        handleRed,
        lightButton,
        miniButton,
        normalButton,
        roundButton,
        switchOff,
        switchOn,
        tempDown,
        tempUp
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
