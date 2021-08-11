// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginCredentialTearOff {
  const _$LoginCredentialTearOff();

  _LoginCredential call(String username, String password) {
    return _LoginCredential(
      username,
      password,
    );
  }
}

/// @nodoc
const $LoginCredential = _$LoginCredentialTearOff();

/// @nodoc
mixin _$LoginCredential {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCredentialCopyWith<LoginCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialCopyWith<$Res> {
  factory $LoginCredentialCopyWith(
          LoginCredential value, $Res Function(LoginCredential) then) =
      _$LoginCredentialCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginCredentialCopyWithImpl<$Res>
    implements $LoginCredentialCopyWith<$Res> {
  _$LoginCredentialCopyWithImpl(this._value, this._then);

  final LoginCredential _value;
  // ignore: unused_field
  final $Res Function(LoginCredential) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginCredentialCopyWith<$Res>
    implements $LoginCredentialCopyWith<$Res> {
  factory _$LoginCredentialCopyWith(
          _LoginCredential value, $Res Function(_LoginCredential) then) =
      __$LoginCredentialCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginCredentialCopyWithImpl<$Res>
    extends _$LoginCredentialCopyWithImpl<$Res>
    implements _$LoginCredentialCopyWith<$Res> {
  __$LoginCredentialCopyWithImpl(
      _LoginCredential _value, $Res Function(_LoginCredential) _then)
      : super(_value, (v) => _then(v as _LoginCredential));

  @override
  _LoginCredential get _value => super._value as _LoginCredential;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginCredential(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginCredential implements _LoginCredential {
  const _$_LoginCredential(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginCredential(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginCredential &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginCredentialCopyWith<_LoginCredential> get copyWith =>
      __$LoginCredentialCopyWithImpl<_LoginCredential>(this, _$identity);
}

abstract class _LoginCredential implements LoginCredential {
  const factory _LoginCredential(String username, String password) =
      _$_LoginCredential;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginCredentialCopyWith<_LoginCredential> get copyWith =>
      throw _privateConstructorUsedError;
}
