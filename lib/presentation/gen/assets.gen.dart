/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/login_illustration.png
  AssetGenImage get loginIllustration => const AssetGenImage('assets/images/login_illustration.png');

  /// List of all assets
  List<AssetGenImage> get values => [loginIllustration];
}

class $AssetsSocialMediaGen {
  const $AssetsSocialMediaGen();

  /// File path: assets/social_media/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/social_media/facebook.svg');

  /// File path: assets/social_media/instagram.svg
  SvgGenImage get instagram => const SvgGenImage('assets/social_media/instagram.svg');

  /// File path: assets/social_media/linkedin.svg
  SvgGenImage get linkedin => const SvgGenImage('assets/social_media/linkedin.svg');

  /// File path: assets/social_media/pinterest.svg
  SvgGenImage get pinterest => const SvgGenImage('assets/social_media/pinterest.svg');

  /// List of all assets
  List<SvgGenImage> get values => [facebook, instagram, linkedin, pinterest];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/add.svg
  SvgGenImage get add => const SvgGenImage('assets/svg/add.svg');

  /// File path: assets/svg/amex.svg
  SvgGenImage get amex => const SvgGenImage('assets/svg/amex.svg');

  /// File path: assets/svg/award.svg
  SvgGenImage get award => const SvgGenImage('assets/svg/award.svg');

  /// File path: assets/svg/default_person.svg
  SvgGenImage get defaultPerson => const SvgGenImage('assets/svg/default_person.svg');

  /// File path: assets/svg/fingerprint.svg
  SvgGenImage get fingerprint => const SvgGenImage('assets/svg/fingerprint.svg');

  /// File path: assets/svg/gift.svg
  SvgGenImage get gift => const SvgGenImage('assets/svg/gift.svg');

  /// File path: assets/svg/hide.svg
  SvgGenImage get hide => const SvgGenImage('assets/svg/hide.svg');

  /// File path: assets/svg/home.svg
  SvgGenImage get home => const SvgGenImage('assets/svg/home.svg');

  /// File path: assets/svg/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/svg/lock.svg');

  /// File path: assets/svg/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/svg/mail.svg');

  /// File path: assets/svg/mastercard.svg
  SvgGenImage get mastercard => const SvgGenImage('assets/svg/mastercard.svg');

  /// File path: assets/svg/money-recive.svg
  SvgGenImage get moneyRecive => const SvgGenImage('assets/svg/money-recive.svg');

  /// File path: assets/svg/money-send-ilustration.svg
  SvgGenImage get moneySendIlustration => const SvgGenImage('assets/svg/money-send-ilustration.svg');

  /// File path: assets/svg/money-send.svg
  SvgGenImage get moneySend => const SvgGenImage('assets/svg/money-send.svg');

  /// File path: assets/svg/more_circle.svg
  SvgGenImage get moreCircle => const SvgGenImage('assets/svg/more_circle.svg');

  /// File path: assets/svg/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/svg/profile.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/security_safe.svg
  SvgGenImage get securitySafe => const SvgGenImage('assets/svg/security_safe.svg');

  /// File path: assets/svg/show.svg
  SvgGenImage get show => const SvgGenImage('assets/svg/show.svg');

  /// File path: assets/svg/visa.svg
  SvgGenImage get visa => const SvgGenImage('assets/svg/visa.svg');

  /// File path: assets/svg/wallet.svg
  SvgGenImage get wallet => const SvgGenImage('assets/svg/wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [add, amex, award, defaultPerson, fingerprint, gift, hide, home, lock, mail, mastercard, moneyRecive, moneySendIlustration, moneySend, moreCircle, profile, search, securitySafe, show, visa, wallet];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSocialMediaGen socialMedia = $AssetsSocialMediaGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
