// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeState.initial()';
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
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
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
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetUserLoadingImplCopyWith<$Res> {
  factory _$$GetUserLoadingImplCopyWith(_$GetUserLoadingImpl value,
          $Res Function(_$GetUserLoadingImpl) then) =
      __$$GetUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetUserLoadingImpl>
    implements _$$GetUserLoadingImplCopyWith<$Res> {
  __$$GetUserLoadingImplCopyWithImpl(
      _$GetUserLoadingImpl _value, $Res Function(_$GetUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserLoadingImpl implements GetUserLoading {
  const _$GetUserLoadingImpl();

  @override
  String toString() {
    return 'HomeState.getUserLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getUserLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserLoading != null) {
      return getUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getUserLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserLoading != null) {
      return getUserLoading(this);
    }
    return orElse();
  }
}

abstract class GetUserLoading implements HomeState {
  const factory GetUserLoading() = _$GetUserLoadingImpl;
}

/// @nodoc
abstract class _$$GetUserFailureImplCopyWith<$Res> {
  factory _$$GetUserFailureImplCopyWith(_$GetUserFailureImpl value,
          $Res Function(_$GetUserFailureImpl) then) =
      __$$GetUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetUserFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetUserFailureImpl>
    implements _$$GetUserFailureImplCopyWith<$Res> {
  __$$GetUserFailureImplCopyWithImpl(
      _$GetUserFailureImpl _value, $Res Function(_$GetUserFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetUserFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserFailureImpl implements GetUserFailure {
  const _$GetUserFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.getUserFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserFailureImplCopyWith<_$GetUserFailureImpl> get copyWith =>
      __$$GetUserFailureImplCopyWithImpl<_$GetUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getUserFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getUserFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserFailure != null) {
      return getUserFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserFailure != null) {
      return getUserFailure(this);
    }
    return orElse();
  }
}

abstract class GetUserFailure implements HomeState {
  const factory GetUserFailure(final String message) = _$GetUserFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GetUserFailureImplCopyWith<_$GetUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserSuccessImplCopyWith<$Res> {
  factory _$$GetUserSuccessImplCopyWith(_$GetUserSuccessImpl value,
          $Res Function(_$GetUserSuccessImpl) then) =
      __$$GetUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData user});
}

/// @nodoc
class __$$GetUserSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetUserSuccessImpl>
    implements _$$GetUserSuccessImplCopyWith<$Res> {
  __$$GetUserSuccessImplCopyWithImpl(
      _$GetUserSuccessImpl _value, $Res Function(_$GetUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GetUserSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$GetUserSuccessImpl implements GetUserSuccess {
  const _$GetUserSuccessImpl(this.user);

  @override
  final UserData user;

  @override
  String toString() {
    return 'HomeState.getUserSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserSuccessImplCopyWith<_$GetUserSuccessImpl> get copyWith =>
      __$$GetUserSuccessImplCopyWithImpl<_$GetUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getUserSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getUserSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserSuccess != null) {
      return getUserSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getUserSuccess != null) {
      return getUserSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserSuccess implements HomeState {
  const factory GetUserSuccess(final UserData user) = _$GetUserSuccessImpl;

  UserData get user;
  @JsonKey(ignore: true)
  _$$GetUserSuccessImplCopyWith<_$GetUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProjectsLoadingImplCopyWith<$Res> {
  factory _$$GetProjectsLoadingImplCopyWith(_$GetProjectsLoadingImpl value,
          $Res Function(_$GetProjectsLoadingImpl) then) =
      __$$GetProjectsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProjectsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetProjectsLoadingImpl>
    implements _$$GetProjectsLoadingImplCopyWith<$Res> {
  __$$GetProjectsLoadingImplCopyWithImpl(_$GetProjectsLoadingImpl _value,
      $Res Function(_$GetProjectsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProjectsLoadingImpl implements GetProjectsLoading {
  const _$GetProjectsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.getProjectsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProjectsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getProjectsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getProjectsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
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
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsLoading != null) {
      return getProjectsLoading(this);
    }
    return orElse();
  }
}

abstract class GetProjectsLoading implements HomeState {
  const factory GetProjectsLoading() = _$GetProjectsLoadingImpl;
}

/// @nodoc
abstract class _$$GetProjectsFailureImplCopyWith<$Res> {
  factory _$$GetProjectsFailureImplCopyWith(_$GetProjectsFailureImpl value,
          $Res Function(_$GetProjectsFailureImpl) then) =
      __$$GetProjectsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetProjectsFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetProjectsFailureImpl>
    implements _$$GetProjectsFailureImplCopyWith<$Res> {
  __$$GetProjectsFailureImplCopyWithImpl(_$GetProjectsFailureImpl _value,
      $Res Function(_$GetProjectsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetProjectsFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProjectsFailureImpl implements GetProjectsFailure {
  const _$GetProjectsFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.getProjectsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProjectsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProjectsFailureImplCopyWith<_$GetProjectsFailureImpl> get copyWith =>
      __$$GetProjectsFailureImplCopyWithImpl<_$GetProjectsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getProjectsFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getProjectsFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
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
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsFailure != null) {
      return getProjectsFailure(this);
    }
    return orElse();
  }
}

abstract class GetProjectsFailure implements HomeState {
  const factory GetProjectsFailure(final String message) =
      _$GetProjectsFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GetProjectsFailureImplCopyWith<_$GetProjectsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProjectsSuccessImplCopyWith<$Res> {
  factory _$$GetProjectsSuccessImplCopyWith(_$GetProjectsSuccessImpl value,
          $Res Function(_$GetProjectsSuccessImpl) then) =
      __$$GetProjectsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$GetProjectsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetProjectsSuccessImpl>
    implements _$$GetProjectsSuccessImplCopyWith<$Res> {
  __$$GetProjectsSuccessImplCopyWithImpl(_$GetProjectsSuccessImpl _value,
      $Res Function(_$GetProjectsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$GetProjectsSuccessImpl(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$GetProjectsSuccessImpl implements GetProjectsSuccess {
  const _$GetProjectsSuccessImpl(final List<ProjectModel> projects)
      : _projects = projects;

  final List<ProjectModel> _projects;
  @override
  List<ProjectModel> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'HomeState.getProjectsSuccess(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProjectsSuccessImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProjectsSuccessImplCopyWith<_$GetProjectsSuccessImpl> get copyWith =>
      __$$GetProjectsSuccessImplCopyWithImpl<_$GetProjectsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserLoading,
    required TResult Function(String message) getUserFailure,
    required TResult Function(UserData user) getUserSuccess,
    required TResult Function() getProjectsLoading,
    required TResult Function(String message) getProjectsFailure,
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return getProjectsSuccess(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserLoading,
    TResult? Function(String message)? getUserFailure,
    TResult? Function(UserData user)? getUserSuccess,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) {
    return getProjectsSuccess?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserLoading,
    TResult Function(String message)? getUserFailure,
    TResult Function(UserData user)? getUserSuccess,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsSuccess != null) {
      return getProjectsSuccess(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetUserLoading value) getUserLoading,
    required TResult Function(GetUserFailure value) getUserFailure,
    required TResult Function(GetUserSuccess value) getUserSuccess,
    required TResult Function(GetProjectsLoading value) getProjectsLoading,
    required TResult Function(GetProjectsFailure value) getProjectsFailure,
    required TResult Function(GetProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetUserLoading value)? getUserLoading,
    TResult? Function(GetUserFailure value)? getUserFailure,
    TResult? Function(GetUserSuccess value)? getUserSuccess,
    TResult? Function(GetProjectsLoading value)? getProjectsLoading,
    TResult? Function(GetProjectsFailure value)? getProjectsFailure,
    TResult? Function(GetProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetUserLoading value)? getUserLoading,
    TResult Function(GetUserFailure value)? getUserFailure,
    TResult Function(GetUserSuccess value)? getUserSuccess,
    TResult Function(GetProjectsLoading value)? getProjectsLoading,
    TResult Function(GetProjectsFailure value)? getProjectsFailure,
    TResult Function(GetProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsSuccess != null) {
      return getProjectsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProjectsSuccess implements HomeState {
  const factory GetProjectsSuccess(final List<ProjectModel> projects) =
      _$GetProjectsSuccessImpl;

  List<ProjectModel> get projects;
  @JsonKey(ignore: true)
  _$$GetProjectsSuccessImplCopyWith<_$GetProjectsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
