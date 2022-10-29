// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginQueries _$LoginQueriesFromJson(Map<String, dynamic> json) {
  return _LoginQueries.fromJson(json);
}

/// @nodoc
mixin _$LoginQueries {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginQueriesCopyWith<LoginQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginQueriesCopyWith<$Res> {
  factory $LoginQueriesCopyWith(
          LoginQueries value, $Res Function(LoginQueries) then) =
      _$LoginQueriesCopyWithImpl<$Res, LoginQueries>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginQueriesCopyWithImpl<$Res, $Val extends LoginQueries>
    implements $LoginQueriesCopyWith<$Res> {
  _$LoginQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginQueriesCopyWith<$Res>
    implements $LoginQueriesCopyWith<$Res> {
  factory _$$_LoginQueriesCopyWith(
          _$_LoginQueries value, $Res Function(_$_LoginQueries) then) =
      __$$_LoginQueriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginQueriesCopyWithImpl<$Res>
    extends _$LoginQueriesCopyWithImpl<$Res, _$_LoginQueries>
    implements _$$_LoginQueriesCopyWith<$Res> {
  __$$_LoginQueriesCopyWithImpl(
      _$_LoginQueries _value, $Res Function(_$_LoginQueries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginQueries(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginQueries implements _LoginQueries {
  _$_LoginQueries({required this.email, required this.password});

  factory _$_LoginQueries.fromJson(Map<String, dynamic> json) =>
      _$$_LoginQueriesFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginQueries(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginQueries &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginQueriesCopyWith<_$_LoginQueries> get copyWith =>
      __$$_LoginQueriesCopyWithImpl<_$_LoginQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginQueriesToJson(
      this,
    );
  }
}

abstract class _LoginQueries implements LoginQueries {
  factory _LoginQueries(
      {required final String email,
      required final String password}) = _$_LoginQueries;

  factory _LoginQueries.fromJson(Map<String, dynamic> json) =
      _$_LoginQueries.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginQueriesCopyWith<_$_LoginQueries> get copyWith =>
      throw _privateConstructorUsedError;
}
