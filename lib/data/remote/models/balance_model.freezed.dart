// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) {
  return _BalanceModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceModel {
  @JsonKey(name: 'type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance', defaultValue: 0)
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceModelCopyWith<BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceModelCopyWith<$Res> {
  factory $BalanceModelCopyWith(
          BalanceModel value, $Res Function(BalanceModel) then) =
      _$BalanceModelCopyWithImpl<$Res, BalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'balance', defaultValue: 0) int balance});
}

/// @nodoc
class _$BalanceModelCopyWithImpl<$Res, $Val extends BalanceModel>
    implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceModelCopyWith<$Res>
    implements $BalanceModelCopyWith<$Res> {
  factory _$$_BalanceModelCopyWith(
          _$_BalanceModel value, $Res Function(_$_BalanceModel) then) =
      __$$_BalanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'balance', defaultValue: 0) int balance});
}

/// @nodoc
class __$$_BalanceModelCopyWithImpl<$Res>
    extends _$BalanceModelCopyWithImpl<$Res, _$_BalanceModel>
    implements _$$_BalanceModelCopyWith<$Res> {
  __$$_BalanceModelCopyWithImpl(
      _$_BalanceModel _value, $Res Function(_$_BalanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? balance = null,
  }) {
    return _then(_$_BalanceModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BalanceModel implements _BalanceModel {
  _$_BalanceModel(
      {@JsonKey(name: 'type', defaultValue: '') required this.type,
      @JsonKey(name: 'balance', defaultValue: 0) required this.balance});

  factory _$_BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceModelFromJson(json);

  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @override
  @JsonKey(name: 'balance', defaultValue: 0)
  final int balance;

  @override
  String toString() {
    return 'BalanceModel(type: $type, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      __$$_BalanceModelCopyWithImpl<_$_BalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceModelToJson(
      this,
    );
  }
}

abstract class _BalanceModel implements BalanceModel {
  factory _BalanceModel(
      {@JsonKey(name: 'type', defaultValue: '')
          required final String type,
      @JsonKey(name: 'balance', defaultValue: 0)
          required final int balance}) = _$_BalanceModel;

  factory _BalanceModel.fromJson(Map<String, dynamic> json) =
      _$_BalanceModel.fromJson;

  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get type;
  @override
  @JsonKey(name: 'balance', defaultValue: 0)
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
