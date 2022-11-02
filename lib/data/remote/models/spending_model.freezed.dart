// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spending_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpendingModel _$SpendingModelFromJson(Map<String, dynamic> json) {
  return _SpendingModel.fromJson(json);
}

/// @nodoc
mixin _$SpendingModel {
  @JsonKey(name: 'income')
  BalanceModel get income => throw _privateConstructorUsedError;
  @JsonKey(name: 'spending', defaultValue: [])
  List<BalanceModel> get spending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendingModelCopyWith<SpendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingModelCopyWith<$Res> {
  factory $SpendingModelCopyWith(
          SpendingModel value, $Res Function(SpendingModel) then) =
      _$SpendingModelCopyWithImpl<$Res, SpendingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'income')
          BalanceModel income,
      @JsonKey(name: 'spending', defaultValue: [])
          List<BalanceModel> spending});

  $BalanceModelCopyWith<$Res> get income;
}

/// @nodoc
class _$SpendingModelCopyWithImpl<$Res, $Val extends SpendingModel>
    implements $SpendingModelCopyWith<$Res> {
  _$SpendingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? spending = null,
  }) {
    return _then(_value.copyWith(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as BalanceModel,
      spending: null == spending
          ? _value.spending
          : spending // ignore: cast_nullable_to_non_nullable
              as List<BalanceModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BalanceModelCopyWith<$Res> get income {
    return $BalanceModelCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpendingModelCopyWith<$Res>
    implements $SpendingModelCopyWith<$Res> {
  factory _$$_SpendingModelCopyWith(
          _$_SpendingModel value, $Res Function(_$_SpendingModel) then) =
      __$$_SpendingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'income')
          BalanceModel income,
      @JsonKey(name: 'spending', defaultValue: [])
          List<BalanceModel> spending});

  @override
  $BalanceModelCopyWith<$Res> get income;
}

/// @nodoc
class __$$_SpendingModelCopyWithImpl<$Res>
    extends _$SpendingModelCopyWithImpl<$Res, _$_SpendingModel>
    implements _$$_SpendingModelCopyWith<$Res> {
  __$$_SpendingModelCopyWithImpl(
      _$_SpendingModel _value, $Res Function(_$_SpendingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? spending = null,
  }) {
    return _then(_$_SpendingModel(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as BalanceModel,
      spending: null == spending
          ? _value._spending
          : spending // ignore: cast_nullable_to_non_nullable
              as List<BalanceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpendingModel implements _SpendingModel {
  _$_SpendingModel(
      {@JsonKey(name: 'income')
          required this.income,
      @JsonKey(name: 'spending', defaultValue: [])
          required final List<BalanceModel> spending})
      : _spending = spending;

  factory _$_SpendingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingModelFromJson(json);

  @override
  @JsonKey(name: 'income')
  final BalanceModel income;
  final List<BalanceModel> _spending;
  @override
  @JsonKey(name: 'spending', defaultValue: [])
  List<BalanceModel> get spending {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spending);
  }

  @override
  String toString() {
    return 'SpendingModel(income: $income, spending: $spending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendingModel &&
            (identical(other.income, income) || other.income == income) &&
            const DeepCollectionEquality().equals(other._spending, _spending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, income, const DeepCollectionEquality().hash(_spending));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendingModelCopyWith<_$_SpendingModel> get copyWith =>
      __$$_SpendingModelCopyWithImpl<_$_SpendingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendingModelToJson(
      this,
    );
  }
}

abstract class _SpendingModel implements SpendingModel {
  factory _SpendingModel(
      {@JsonKey(name: 'income')
          required final BalanceModel income,
      @JsonKey(name: 'spending', defaultValue: [])
          required final List<BalanceModel> spending}) = _$_SpendingModel;

  factory _SpendingModel.fromJson(Map<String, dynamic> json) =
      _$_SpendingModel.fromJson;

  @override
  @JsonKey(name: 'income')
  BalanceModel get income;
  @override
  @JsonKey(name: 'spending', defaultValue: [])
  List<BalanceModel> get spending;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingModelCopyWith<_$_SpendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
