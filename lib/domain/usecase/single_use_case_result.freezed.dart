// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_use_case_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleUseCaseResultTearOff {
  const _$SingleUseCaseResultTearOff();

  _$Success<T> success<T extends Object>(T data) {
    return _$Success<T>(
      data,
    );
  }

  _$NoInternetConnection<T> noInternetConnection<T extends Object>() {
    return _$NoInternetConnection<T>();
  }

  _$ServerError<T> serverError<T extends Object>(ServerError error) {
    return _$ServerError<T>(
      error,
    );
  }

  _$GenericError<T> genericError<T extends Object>(Exception exception) {
    return _$GenericError<T>(
      exception,
    );
  }
}

/// @nodoc
const $SingleUseCaseResult = _$SingleUseCaseResultTearOff();

/// @nodoc
mixin _$SingleUseCaseResult<T extends Object> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() noInternetConnection,
    required TResult Function(ServerError error) serverError,
    required TResult Function(Exception exception) genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? noInternetConnection,
    TResult Function(ServerError error)? serverError,
    TResult Function(Exception exception)? genericError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Success<T> value) success,
    required TResult Function(_$NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(_$ServerError<T> value) serverError,
    required TResult Function(_$GenericError<T> value) genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Success<T> value)? success,
    TResult Function(_$NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(_$ServerError<T> value)? serverError,
    TResult Function(_$GenericError<T> value)? genericError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleUseCaseResultCopyWith<T extends Object, $Res> {
  factory $SingleUseCaseResultCopyWith(SingleUseCaseResult<T> value,
          $Res Function(SingleUseCaseResult<T>) then) =
      _$SingleUseCaseResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SingleUseCaseResultCopyWithImpl<T extends Object, $Res>
    implements $SingleUseCaseResultCopyWith<T, $Res> {
  _$SingleUseCaseResultCopyWithImpl(this._value, this._then);

  final SingleUseCaseResult<T> _value;
  // ignore: unused_field
  final $Res Function(SingleUseCaseResult<T>) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<T extends Object, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<T> value, $Res Function(_$Success<T>) then) =
      __$$SuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$SuccessCopyWithImpl<T extends Object, $Res>
    extends _$SingleUseCaseResultCopyWithImpl<T, $Res>
    implements _$$SuccessCopyWith<T, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<T> _value, $Res Function(_$Success<T>) _then)
      : super(_value, (v) => _then(v as _$Success<T>));

  @override
  _$Success<T> get _value => super._value as _$Success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Success<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_$Success<T extends Object> implements _$Success<T> {
  const _$_$Success(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SingleUseCaseResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Success<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      __$$SuccessCopyWithImpl<T, _$Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() noInternetConnection,
    required TResult Function(ServerError error) serverError,
    required TResult Function(Exception exception) genericError,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? noInternetConnection,
    TResult Function(ServerError error)? serverError,
    TResult Function(Exception exception)? genericError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Success<T> value) success,
    required TResult Function(_$NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(_$ServerError<T> value) serverError,
    required TResult Function(_$GenericError<T> value) genericError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Success<T> value)? success,
    TResult Function(_$NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(_$ServerError<T> value)? serverError,
    TResult Function(_$GenericError<T> value)? genericError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$Success<T extends Object> implements SingleUseCaseResult<T> {
  const factory _$Success(T data) = _$_$Success<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionCopyWith<T extends Object, $Res> {
  factory _$$NoInternetConnectionCopyWith(_$NoInternetConnection<T> value,
          $Res Function(_$NoInternetConnection<T>) then) =
      __$$NoInternetConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoInternetConnectionCopyWithImpl<T extends Object, $Res>
    extends _$SingleUseCaseResultCopyWithImpl<T, $Res>
    implements _$$NoInternetConnectionCopyWith<T, $Res> {
  __$$NoInternetConnectionCopyWithImpl(_$NoInternetConnection<T> _value,
      $Res Function(_$NoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as _$NoInternetConnection<T>));

  @override
  _$NoInternetConnection<T> get _value =>
      super._value as _$NoInternetConnection<T>;
}

/// @nodoc

class _$_$NoInternetConnection<T extends Object>
    implements _$NoInternetConnection<T> {
  const _$_$NoInternetConnection();

  @override
  String toString() {
    return 'SingleUseCaseResult<$T>.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$NoInternetConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() noInternetConnection,
    required TResult Function(ServerError error) serverError,
    required TResult Function(Exception exception) genericError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? noInternetConnection,
    TResult Function(ServerError error)? serverError,
    TResult Function(Exception exception)? genericError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Success<T> value) success,
    required TResult Function(_$NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(_$ServerError<T> value) serverError,
    required TResult Function(_$GenericError<T> value) genericError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Success<T> value)? success,
    TResult Function(_$NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(_$ServerError<T> value)? serverError,
    TResult Function(_$GenericError<T> value)? genericError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetConnection<T extends Object>
    implements SingleUseCaseResult<T> {
  const factory _$NoInternetConnection() = _$_$NoInternetConnection<T>;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<T extends Object, $Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError<T> value, $Res Function(_$ServerError<T>) then) =
      __$$ServerErrorCopyWithImpl<T, $Res>;
  $Res call({ServerError error});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<T extends Object, $Res>
    extends _$SingleUseCaseResultCopyWithImpl<T, $Res>
    implements _$$ServerErrorCopyWith<T, $Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError<T> _value, $Res Function(_$ServerError<T>) _then)
      : super(_value, (v) => _then(v as _$ServerError<T>));

  @override
  _$ServerError<T> get _value => super._value as _$ServerError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ServerError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerError,
    ));
  }
}

/// @nodoc

class _$_$ServerError<T extends Object> implements _$ServerError<T> {
  const _$_$ServerError(this.error);

  @override
  final ServerError error;

  @override
  String toString() {
    return 'SingleUseCaseResult<$T>.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ServerError<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$$ServerErrorCopyWith<T, _$ServerError<T>> get copyWith =>
      __$$ServerErrorCopyWithImpl<T, _$ServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() noInternetConnection,
    required TResult Function(ServerError error) serverError,
    required TResult Function(Exception exception) genericError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? noInternetConnection,
    TResult Function(ServerError error)? serverError,
    TResult Function(Exception exception)? genericError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Success<T> value) success,
    required TResult Function(_$NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(_$ServerError<T> value) serverError,
    required TResult Function(_$GenericError<T> value) genericError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Success<T> value)? success,
    TResult Function(_$NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(_$ServerError<T> value)? serverError,
    TResult Function(_$GenericError<T> value)? genericError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerError<T extends Object>
    implements SingleUseCaseResult<T> {
  const factory _$ServerError(ServerError error) = _$_$ServerError<T>;

  ServerError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<T, _$ServerError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericErrorCopyWith<T extends Object, $Res> {
  factory _$$GenericErrorCopyWith(
          _$GenericError<T> value, $Res Function(_$GenericError<T>) then) =
      __$$GenericErrorCopyWithImpl<T, $Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$$GenericErrorCopyWithImpl<T extends Object, $Res>
    extends _$SingleUseCaseResultCopyWithImpl<T, $Res>
    implements _$$GenericErrorCopyWith<T, $Res> {
  __$$GenericErrorCopyWithImpl(
      _$GenericError<T> _value, $Res Function(_$GenericError<T>) _then)
      : super(_value, (v) => _then(v as _$GenericError<T>));

  @override
  _$GenericError<T> get _value => super._value as _$GenericError<T>;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$GenericError<T>(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_$GenericError<T extends Object> implements _$GenericError<T> {
  const _$_$GenericError(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'SingleUseCaseResult<$T>.genericError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GenericError<T> &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$$GenericErrorCopyWith<T, _$GenericError<T>> get copyWith =>
      __$$GenericErrorCopyWithImpl<T, _$GenericError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() noInternetConnection,
    required TResult Function(ServerError error) serverError,
    required TResult Function(Exception exception) genericError,
  }) {
    return genericError(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? noInternetConnection,
    TResult Function(ServerError error)? serverError,
    TResult Function(Exception exception)? genericError,
    required TResult orElse(),
  }) {
    if (genericError != null) {
      return genericError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Success<T> value) success,
    required TResult Function(_$NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(_$ServerError<T> value) serverError,
    required TResult Function(_$GenericError<T> value) genericError,
  }) {
    return genericError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Success<T> value)? success,
    TResult Function(_$NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(_$ServerError<T> value)? serverError,
    TResult Function(_$GenericError<T> value)? genericError,
    required TResult orElse(),
  }) {
    if (genericError != null) {
      return genericError(this);
    }
    return orElse();
  }
}

abstract class _$GenericError<T extends Object>
    implements SingleUseCaseResult<T> {
  const factory _$GenericError(Exception exception) = _$_$GenericError<T>;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GenericErrorCopyWith<T, _$GenericError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
