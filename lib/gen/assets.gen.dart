// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/android.webp
  AssetGenImage get android =>
      const AssetGenImage('assets/images/android.webp');

  /// File path: assets/images/app-icon.webp
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app-icon.webp');

  /// File path: assets/images/apple.webp
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.webp');

  /// File path: assets/images/bg1.webp
  AssetGenImage get bg1 => const AssetGenImage('assets/images/bg1.webp');

  /// File path: assets/images/bg2.webp
  AssetGenImage get bg2 => const AssetGenImage('assets/images/bg2.webp');

  /// File path: assets/images/call.webp
  AssetGenImage get call => const AssetGenImage('assets/images/call.webp');

  /// File path: assets/images/chrome.webp
  AssetGenImage get chrome => const AssetGenImage('assets/images/chrome.webp');

  /// File path: assets/images/e-mandate.webp
  AssetGenImage get eMandate =>
      const AssetGenImage('assets/images/e-mandate.webp');

  /// File path: assets/images/facebook.webp
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.webp');

  /// File path: assets/images/fb_lite.webp
  AssetGenImage get fbLite => const AssetGenImage('assets/images/fb_lite.webp');

  /// File path: assets/images/google.webp
  AssetGenImage get google => const AssetGenImage('assets/images/google.webp');

  /// File path: assets/images/hotstar.webp
  AssetGenImage get hotstar =>
      const AssetGenImage('assets/images/hotstar.webp');

  /// File path: assets/images/instagram.webp
  AssetGenImage get instagram =>
      const AssetGenImage('assets/images/instagram.webp');

  /// File path: assets/images/loading_placeholder.webp
  AssetGenImage get loadingPlaceholder =>
      const AssetGenImage('assets/images/loading_placeholder.webp');

  /// File path: assets/images/logo.webp
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.webp');

  /// File path: assets/images/logo1.webp
  AssetGenImage get logo1 => const AssetGenImage('assets/images/logo1.webp');

  /// File path: assets/images/noImage.webp
  AssetGenImage get noImage =>
      const AssetGenImage('assets/images/noImage.webp');

  /// File path: assets/images/ntf.webp
  AssetGenImage get ntf => const AssetGenImage('assets/images/ntf.webp');

  /// File path: assets/images/qrimage.webp
  AssetGenImage get qrimage =>
      const AssetGenImage('assets/images/qrimage.webp');

  /// File path: assets/images/reboot.webp
  AssetGenImage get reboot => const AssetGenImage('assets/images/reboot.webp');

  /// File path: assets/images/reload.webp
  AssetGenImage get reload => const AssetGenImage('assets/images/reload.webp');

  /// File path: assets/images/setpin.webp
  AssetGenImage get setpin => const AssetGenImage('assets/images/setpin.webp');

  /// File path: assets/images/splash.jpg
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.jpg');

  /// File path: assets/images/telegram.webp
  AssetGenImage get telegram =>
      const AssetGenImage('assets/images/telegram.webp');

  /// File path: assets/images/whatsapp.webp
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/images/whatsapp.webp');

  /// File path: assets/images/wp_bussuness.webp
  AssetGenImage get wpBussuness =>
      const AssetGenImage('assets/images/wp_bussuness.webp');

  /// File path: assets/images/youtube1.webp
  AssetGenImage get youtube1 =>
      const AssetGenImage('assets/images/youtube1.webp');

  /// File path: assets/images/youtube2.webp
  AssetGenImage get youtube2 =>
      const AssetGenImage('assets/images/youtube2.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
    android,
    appIcon,
    apple,
    bg1,
    bg2,
    call,
    chrome,
    eMandate,
    facebook,
    fbLite,
    google,
    hotstar,
    instagram,
    loadingPlaceholder,
    logo,
    logo1,
    noImage,
    ntf,
    qrimage,
    reboot,
    reload,
    setpin,
    splash,
    telegram,
    whatsapp,
    wpBussuness,
    youtube1,
    youtube2,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
