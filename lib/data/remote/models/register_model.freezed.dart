// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  RegisterData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message', defaultValue: '')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call(
      {RegisterData? data,
      @JsonKey(name: 'message', defaultValue: '') String message});

  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$_RegisterModelCopyWith(
          _$_RegisterModel value, $Res Function(_$_RegisterModel) then) =
      __$$_RegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterData? data,
      @JsonKey(name: 'message', defaultValue: '') String message});

  @override
  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$_RegisterModel>
    implements _$$_RegisterModelCopyWith<$Res> {
  __$$_RegisterModelCopyWithImpl(
      _$_RegisterModel _value, $Res Function(_$_RegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$_RegisterModel(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  _$_RegisterModel(
      {this.data,
      @JsonKey(name: 'message', defaultValue: '') required this.message});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final RegisterData? data;
  @override
  @JsonKey(name: 'message', defaultValue: '')
  final String message;

  @override
  String toString() {
    return 'RegisterModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      __$$_RegisterModelCopyWithImpl<_$_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  factory _RegisterModel(
      {final RegisterData? data,
      @JsonKey(name: 'message', defaultValue: '')
          required final String message}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  RegisterData? get data;
  @override
  @JsonKey(name: 'message', defaultValue: '')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return _RegisterData.fromJson(json);
}

/// @nodoc
mixin _$RegisterData {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', defaultValue: '')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'updated_at', defaultValue: '') String updatedAt,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$_RegisterDataCopyWith(
          _$_RegisterData value, $Res Function(_$_RegisterData) then) =
      __$$_RegisterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'updated_at', defaultValue: '') String updatedAt,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt});
}

/// @nodoc
class __$$_RegisterDataCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$_RegisterData>
    implements _$$_RegisterDataCopyWith<$Res> {
  __$$_RegisterDataCopyWithImpl(
      _$_RegisterData _value, $Res Function(_$_RegisterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$_RegisterData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterData implements _RegisterData {
  _$_RegisterData(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'updated_at', defaultValue: '') required this.updatedAt,
      @JsonKey(name: 'created_at', defaultValue: '') required this.createdAt});

  factory _$_RegisterData.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDataFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  @override
  String toString() {
    return 'RegisterData(id: $id, name: $name, email: $email, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      __$$_RegisterDataCopyWithImpl<_$_RegisterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDataToJson(
      this,
    );
  }
}

abstract class _RegisterData implements RegisterData {
  factory _RegisterData(
      {@JsonKey(name: 'id', defaultValue: 0)
          required final int id,
      @JsonKey(name: 'name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'email', defaultValue: '')
          required final String email,
      @JsonKey(name: 'updated_at', defaultValue: '')
          required final String updatedAt,
      @JsonKey(name: 'created_at', defaultValue: '')
          required final String createdAt}) = _$_RegisterData;

  factory _RegisterData.fromJson(Map<String, dynamic> json) =
      _$_RegisterData.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'updated_at', defaultValue: '')
  String get updatedAt;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}
