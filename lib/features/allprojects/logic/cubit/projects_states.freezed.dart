// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(ProjectModel user) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(ProjectModel user)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(ProjectModel user)? getProjectsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(getProjectsLoading value) getProjectsLoading,
    required TResult Function(getProjectsFailure value) getProjectsFailure,
    required TResult Function(getProjectsSuccess value) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(getProjectsLoading value)? getProjectsLoading,
    TResult? Function(getProjectsFailure value)? getProjectsFailure,
    TResult? Function(getProjectsSuccess value)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(getProjectsLoading value)? getProjectsLoading,
    TResult Function(getProjectsFailure value)? getProjectsFailure,
    TResult Function(getProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStatesCopyWith<$Res> {
  factory $ProjectStatesCopyWith(
          ProjectStates value, $Res Function(ProjectStates) then) =
      _$ProjectStatesCopyWithImpl<$Res, ProjectStates>;
}

/// @nodoc
class _$ProjectStatesCopyWithImpl<$Res, $Val extends ProjectStates>
    implements $ProjectStatesCopyWith<$Res> {
  _$ProjectStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProjectStates.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(ProjectModel user) getProjectsSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(ProjectModel user)? getProjectsSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(ProjectModel user)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(getProjectsLoading value) getProjectsLoading,
    required TResult Function(getProjectsFailure value) getProjectsFailure,
    required TResult Function(getProjectsSuccess value) getProjectsSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(getProjectsLoading value)? getProjectsLoading,
    TResult? Function(getProjectsFailure value)? getProjectsFailure,
    TResult? Function(getProjectsSuccess value)? getProjectsSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(getProjectsLoading value)? getProjectsLoading,
    TResult Function(getProjectsFailure value)? getProjectsFailure,
    TResult Function(getProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$getProjectsLoadingImplCopyWith<$Res> {
  factory _$$getProjectsLoadingImplCopyWith(_$getProjectsLoadingImpl value,
          $Res Function(_$getProjectsLoadingImpl) then) =
      __$$getProjectsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getProjectsLoadingImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$getProjectsLoadingImpl>
    implements _$$getProjectsLoadingImplCopyWith<$Res> {
  __$$getProjectsLoadingImplCopyWithImpl(_$getProjectsLoadingImpl _value,
      $Res Function(_$getProjectsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getProjectsLoadingImpl implements getProjectsLoading {
  const _$getProjectsLoadingImpl();

  @override
  String toString() {
    return 'ProjectStates.getProjectsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getProjectsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(ProjectModel user) getProjectsSuccess,
  }) {
    return getProjectsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(ProjectModel user)? getProjectsSuccess,
  }) {
    return getProjectsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(ProjectModel user)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsLoading != null) {
      return getProjectsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(getProjectsLoading value) getProjectsLoading,
    required TResult Function(getProjectsFailure value) getProjectsFailure,
    required TResult Function(getProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(getProjectsLoading value)? getProjectsLoading,
    TResult? Function(getProjectsFailure value)? getProjectsFailure,
    TResult? Function(getProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(getProjectsLoading value)? getProjectsLoading,
    TResult Function(getProjectsFailure value)? getProjectsFailure,
    TResult Function(getProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsLoading != null) {
      return getProjectsLoading(this);
    }
    return orElse();
  }
}

abstract class getProjectsLoading implements ProjectStates {
  const factory getProjectsLoading() = _$getProjectsLoadingImpl;
}

/// @nodoc
abstract class _$$getProjectsFailureImplCopyWith<$Res> {
  factory _$$getProjectsFailureImplCopyWith(_$getProjectsFailureImpl value,
          $Res Function(_$getProjectsFailureImpl) then) =
      __$$getProjectsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$getProjectsFailureImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$getProjectsFailureImpl>
    implements _$$getProjectsFailureImplCopyWith<$Res> {
  __$$getProjectsFailureImplCopyWithImpl(_$getProjectsFailureImpl _value,
      $Res Function(_$getProjectsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$getProjectsFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getProjectsFailureImpl implements getProjectsFailure {
  const _$getProjectsFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectStates.getProjectsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getProjectsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getProjectsFailureImplCopyWith<_$getProjectsFailureImpl> get copyWith =>
      __$$getProjectsFailureImplCopyWithImpl<_$getProjectsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(ProjectModel user) getProjectsSuccess,
  }) {
    return getProjectsFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(ProjectModel user)? getProjectsSuccess,
  }) {
    return getProjectsFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(ProjectModel user)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsFailure != null) {
      return getProjectsFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(getProjectsLoading value) getProjectsLoading,
    required TResult Function(getProjectsFailure value) getProjectsFailure,
    required TResult Function(getProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(getProjectsLoading value)? getProjectsLoading,
    TResult? Function(getProjectsFailure value)? getProjectsFailure,
    TResult? Function(getProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(getProjectsLoading value)? getProjectsLoading,
    TResult Function(getProjectsFailure value)? getProjectsFailure,
    TResult Function(getProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsFailure != null) {
      return getProjectsFailure(this);
    }
    return orElse();
  }
}

abstract class getProjectsFailure implements ProjectStates {
  const factory getProjectsFailure(final String message) =
      _$getProjectsFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$getProjectsFailureImplCopyWith<_$getProjectsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getProjectsSuccessImplCopyWith<$Res> {
  factory _$$getProjectsSuccessImplCopyWith(_$getProjectsSuccessImpl value,
          $Res Function(_$getProjectsSuccessImpl) then) =
      __$$getProjectsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectModel user});
}

/// @nodoc
class __$$getProjectsSuccessImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$getProjectsSuccessImpl>
    implements _$$getProjectsSuccessImplCopyWith<$Res> {
  __$$getProjectsSuccessImplCopyWithImpl(_$getProjectsSuccessImpl _value,
      $Res Function(_$getProjectsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$getProjectsSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
    ));
  }
}

/// @nodoc

class _$getProjectsSuccessImpl implements getProjectsSuccess {
  const _$getProjectsSuccessImpl(this.user);

  @override
  final ProjectModel user;

  @override
  String toString() {
    return 'ProjectStates.getProjectsSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getProjectsSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getProjectsSuccessImplCopyWith<_$getProjectsSuccessImpl> get copyWith =>
      __$$getProjectsSuccessImplCopyWithImpl<_$getProjectsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(ProjectModel user) getProjectsSuccess,
  }) {
    return getProjectsSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(ProjectModel user)? getProjectsSuccess,
  }) {
    return getProjectsSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(ProjectModel user)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsSuccess != null) {
      return getProjectsSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(getProjectsLoading value) getProjectsLoading,
    required TResult Function(getProjectsFailure value) getProjectsFailure,
    required TResult Function(getProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(getProjectsLoading value)? getProjectsLoading,
    TResult? Function(getProjectsFailure value)? getProjectsFailure,
    TResult? Function(getProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(getProjectsLoading value)? getProjectsLoading,
    TResult Function(getProjectsFailure value)? getProjectsFailure,
    TResult Function(getProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsSuccess != null) {
      return getProjectsSuccess(this);
    }
    return orElse();
  }
}

abstract class getProjectsSuccess implements ProjectStates {
  const factory getProjectsSuccess(final ProjectModel user) =
      _$getProjectsSuccessImpl;

  ProjectModel get user;
  @JsonKey(ignore: true)
  _$$getProjectsSuccessImplCopyWith<_$getProjectsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
