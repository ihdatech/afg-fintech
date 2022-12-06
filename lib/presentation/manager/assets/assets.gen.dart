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

  /// File path: assets/images/login_illustration.png
  AssetGenImage get loginIllustration => const AssetGenImage('assets/images/login_illustration.png');

  /// List of all assets
  List<AssetGenImage> get values => [loginIllustration];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/card.json
  String get card => 'assets/json/card.json';

  /// File path: assets/json/login.json
  String get login => 'assets/json/login.json';

  /// File path: assets/json/spending.json
  String get spending => 'assets/json/spending.json';

  /// List of all assets
  List<String> get values => [card, login, spending];
}

class $AssetsSocialMediaGen {
  const $AssetsSocialMediaGen();

  /// File path: assets/social_media/facebook.svg
  String get facebook => 'assets/social_media/facebook.svg';

  /// File path: assets/social_media/instagram.svg
  String get instagram => 'assets/social_media/instagram.svg';

  /// File path: assets/social_media/linkedin.svg
  String get linkedin => 'assets/social_media/linkedin.svg';

  /// File path: assets/social_media/pinterest.svg
  String get pinterest => 'assets/social_media/pinterest.svg';

  /// List of all assets
  List<String> get values => [facebook, instagram, linkedin, pinterest];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/add.svg
  String get add => 'assets/svg/add.svg';

  /// File path: assets/svg/amex.svg
  String get amex => 'assets/svg/amex.svg';

  /// File path: assets/svg/award.svg
  String get award => 'assets/svg/award.svg';

  /// File path: assets/svg/default_person.svg
  String get defaultPerson => 'assets/svg/default_person.svg';

  /// File path: assets/svg/fingerprint.svg
  String get fingerprint => 'assets/svg/fingerprint.svg';

  /// File path: assets/svg/gift.svg
  String get gift => 'assets/svg/gift.svg';

  /// File path: assets/svg/hide.svg
  String get hide => 'assets/svg/hide.svg';

  /// File path: assets/svg/home-filled.svg
  String get homeFilled => 'assets/svg/home-filled.svg';

  /// File path: assets/svg/home-outline.svg
  String get homeOutline => 'assets/svg/home-outline.svg';

  /// File path: assets/svg/lock.svg
  String get lock => 'assets/svg/lock.svg';

  /// File path: assets/svg/mail.svg
  String get mail => 'assets/svg/mail.svg';

  /// File path: assets/svg/mastercard.svg
  String get mastercard => 'assets/svg/mastercard.svg';

  /// File path: assets/svg/money-recive.svg
  String get moneyRecive => 'assets/svg/money-recive.svg';

  /// File path: assets/svg/money-send-ilustration.svg
  String get moneySendIlustration => 'assets/svg/money-send-ilustration.svg';

  /// File path: assets/svg/money-send.svg
  String get moneySend => 'assets/svg/money-send.svg';

  /// File path: assets/svg/more_circle.svg
  String get moreCircle => 'assets/svg/more_circle.svg';

  /// File path: assets/svg/profile.svg
  String get profile => 'assets/svg/profile.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// File path: assets/svg/security_safe.svg
  String get securitySafe => 'assets/svg/security_safe.svg';

  /// File path: assets/svg/show.svg
  String get show => 'assets/svg/show.svg';

  /// File path: assets/svg/union_pay.svg
  String get unionPay => 'assets/svg/union_pay.svg';

  /// File path: assets/svg/visa.svg
  String get visa => 'assets/svg/visa.svg';

  /// File path: assets/svg/wallet-filled.svg
  String get walletFilled => 'assets/svg/wallet-filled.svg';

  /// File path: assets/svg/wallet-outline.svg
  String get walletOutline => 'assets/svg/wallet-outline.svg';

  /// List of all assets
  List<String> get values => [add, amex, award, defaultPerson, fingerprint, gift, hide, homeFilled, homeOutline, lock, mail, mastercard, moneyRecive, moneySendIlustration, moneySend, moreCircle, profile, search, securitySafe, show, unionPay, visa, walletFilled, walletOutline];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
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
