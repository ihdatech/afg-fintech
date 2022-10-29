// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterBody _$RegisterBodyFromJson(Map<String, dynamic> json) {
  return _RegisterBody.fromJson(json);
}

/// @nodoc
mixin _$RegisterBody {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterBodyCopyWith<RegisterBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBodyCopyWith<$Res> {
  factory $RegisterBodyCopyWith(
          RegisterBody value, $Res Function(RegisterBody) then) =
      _$RegisterBodyCopyWithImpl<$Res, RegisterBody>;
  @useResult
  $Res call({String? name, String? email, String? password});
}

/// @nodoc
class _$RegisterBodyCopyWithImpl<$Res, $Val extends RegisterBody>
    implements $RegisterBodyCopyWith<$Res> {
  _$RegisterBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterBodyCopyWith<$Res>
    implements $RegisterBodyCopyWith<$Res> {
  factory _$$_RegisterBodyCopyWith(
          _$_RegisterBody value, $Res Function(_$_RegisterBody) then) =
      __$$_RegisterBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? password});
}

/// @nodoc
class __$$_RegisterBodyCopyWithImpl<$Res>
    extends _$RegisterBodyCopyWithImpl<$Res, _$_RegisterBody>
    implements _$$_RegisterBodyCopyWith<$Res> {
  __$$_RegisterBodyCopyWithImpl(
      _$_RegisterBody _value, $Res Function(_$_RegisterBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_RegisterBody(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterBody implements _RegisterBody {
  _$_RegisterBody({this.name, this.email, this.password});

  factory _$_RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterBodyFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'RegisterBody(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterBody &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterBodyCopyWith<_$_RegisterBody> get copyWith =>
      __$$_RegisterBodyCopyWithImpl<_$_RegisterBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterBodyToJson(
      this,
    );
  }
}

abstract class _RegisterBody implements RegisterBody {
  factory _RegisterBody(
      {final String? name,
      final String? email,
      final String? password}) = _$_RegisterBody;

  factory _RegisterBody.fromJson(Map<String, dynamic> json) =
      _$_RegisterBody.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterBodyCopyWith<_$_RegisterBody> get copyWith =>
      throw _privateConstructorUsedError;
}
