// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  @JsonKey(name: 'exp', defaultValue: '')
  String get exp => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo', defaultValue: '')
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'number', defaultValue: 0)
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance', defaultValue: 0)
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'exp', defaultValue: '') String exp,
      @JsonKey(name: 'logo', defaultValue: '') String logo,
      @JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'number', defaultValue: 0) int number,
      @JsonKey(name: 'balance', defaultValue: 0) int balance});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exp = null,
    Object? logo = null,
    Object? type = null,
    Object? number = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$$_CardModelCopyWith(
          _$_CardModel value, $Res Function(_$_CardModel) then) =
      __$$_CardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'exp', defaultValue: '') String exp,
      @JsonKey(name: 'logo', defaultValue: '') String logo,
      @JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'number', defaultValue: 0) int number,
      @JsonKey(name: 'balance', defaultValue: 0) int balance});
}

/// @nodoc
class __$$_CardModelCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$_CardModel>
    implements _$$_CardModelCopyWith<$Res> {
  __$$_CardModelCopyWithImpl(
      _$_CardModel _value, $Res Function(_$_CardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exp = null,
    Object? logo = null,
    Object? type = null,
    Object? number = null,
    Object? balance = null,
  }) {
    return _then(_$_CardModel(
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardModel implements _CardModel {
  _$_CardModel(
      {@JsonKey(name: 'exp', defaultValue: '') required this.exp,
      @JsonKey(name: 'logo', defaultValue: '') required this.logo,
      @JsonKey(name: 'type', defaultValue: '') required this.type,
      @JsonKey(name: 'number', defaultValue: 0) required this.number,
      @JsonKey(name: 'balance', defaultValue: 0) required this.balance});

  factory _$_CardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardModelFromJson(json);

  @override
  @JsonKey(name: 'exp', defaultValue: '')
  final String exp;
  @override
  @JsonKey(name: 'logo', defaultValue: '')
  final String logo;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @override
  @JsonKey(name: 'number', defaultValue: 0)
  final int number;
  @override
  @JsonKey(name: 'balance', defaultValue: 0)
  final int balance;

  @override
  String toString() {
    return 'CardModel(exp: $exp, logo: $logo, type: $type, number: $number, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardModel &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exp, logo, type, number, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      __$$_CardModelCopyWithImpl<_$_CardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardModelToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  factory _CardModel(
      {@JsonKey(name: 'exp', defaultValue: '')
          required final String exp,
      @JsonKey(name: 'logo', defaultValue: '')
          required final String logo,
      @JsonKey(name: 'type', defaultValue: '')
          required final String type,
      @JsonKey(name: 'number', defaultValue: 0)
          required final int number,
      @JsonKey(name: 'balance', defaultValue: 0)
          required final int balance}) = _$_CardModel;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$_CardModel.fromJson;

  @override
  @JsonKey(name: 'exp', defaultValue: '')
  String get exp;
  @override
  @JsonKey(name: 'logo', defaultValue: '')
  String get logo;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get type;
  @override
  @JsonKey(name: 'number', defaultValue: 0)
  int get number;
  @override
  @JsonKey(name: 'balance', defaultValue: 0)
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_CardModelCopyWith<_$_CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
