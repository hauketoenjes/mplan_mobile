/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/OFL.txt
  String get ofl => 'assets/fonts/OFL.txt';

  /// File path: assets/fonts/PlusJakartaSans-Bold.ttf
  String get plusJakartaSansBold => 'assets/fonts/PlusJakartaSans-Bold.ttf';

  /// File path: assets/fonts/PlusJakartaSans-BoldItalic.ttf
  String get plusJakartaSansBoldItalic =>
      'assets/fonts/PlusJakartaSans-BoldItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-ExtraBold.ttf
  String get plusJakartaSansExtraBold =>
      'assets/fonts/PlusJakartaSans-ExtraBold.ttf';

  /// File path: assets/fonts/PlusJakartaSans-ExtraBoldItalic.ttf
  String get plusJakartaSansExtraBoldItalic =>
      'assets/fonts/PlusJakartaSans-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-ExtraLight.ttf
  String get plusJakartaSansExtraLight =>
      'assets/fonts/PlusJakartaSans-ExtraLight.ttf';

  /// File path: assets/fonts/PlusJakartaSans-ExtraLightItalic.ttf
  String get plusJakartaSansExtraLightItalic =>
      'assets/fonts/PlusJakartaSans-ExtraLightItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-Italic-VariableFont_wght.ttf
  String get plusJakartaSansItalicVariableFontWght =>
      'assets/fonts/PlusJakartaSans-Italic-VariableFont_wght.ttf';

  /// File path: assets/fonts/PlusJakartaSans-Italic.ttf
  String get plusJakartaSansItalic => 'assets/fonts/PlusJakartaSans-Italic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-Light.ttf
  String get plusJakartaSansLight => 'assets/fonts/PlusJakartaSans-Light.ttf';

  /// File path: assets/fonts/PlusJakartaSans-LightItalic.ttf
  String get plusJakartaSansLightItalic =>
      'assets/fonts/PlusJakartaSans-LightItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-Medium.ttf
  String get plusJakartaSansMedium => 'assets/fonts/PlusJakartaSans-Medium.ttf';

  /// File path: assets/fonts/PlusJakartaSans-MediumItalic.ttf
  String get plusJakartaSansMediumItalic =>
      'assets/fonts/PlusJakartaSans-MediumItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-Regular.ttf
  String get plusJakartaSansRegular =>
      'assets/fonts/PlusJakartaSans-Regular.ttf';

  /// File path: assets/fonts/PlusJakartaSans-SemiBold.ttf
  String get plusJakartaSansSemiBold =>
      'assets/fonts/PlusJakartaSans-SemiBold.ttf';

  /// File path: assets/fonts/PlusJakartaSans-SemiBoldItalic.ttf
  String get plusJakartaSansSemiBoldItalic =>
      'assets/fonts/PlusJakartaSans-SemiBoldItalic.ttf';

  /// File path: assets/fonts/PlusJakartaSans-VariableFont_wght.ttf
  String get plusJakartaSansVariableFontWght =>
      'assets/fonts/PlusJakartaSans-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values => [
    ofl,
    plusJakartaSansBold,
    plusJakartaSansBoldItalic,
    plusJakartaSansExtraBold,
    plusJakartaSansExtraBoldItalic,
    plusJakartaSansExtraLight,
    plusJakartaSansExtraLightItalic,
    plusJakartaSansItalicVariableFontWght,
    plusJakartaSansItalic,
    plusJakartaSansLight,
    plusJakartaSansLightItalic,
    plusJakartaSansMedium,
    plusJakartaSansMediumItalic,
    plusJakartaSansRegular,
    plusJakartaSansSemiBold,
    plusJakartaSansSemiBoldItalic,
    plusJakartaSansVariableFontWght,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/msvv_logo.png
  AssetGenImage get msvvLogo =>
      const AssetGenImage('assets/images/msvv_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [msvvLogo];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
