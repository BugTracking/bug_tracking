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
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProjectsLoading,
    TResult? Function(String message)? getProjectsFailure,
    TResult? Function(List<ProjectModel> projects)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProjectsLoading,
    TResult Function(String message)? getProjectsFailure,
    TResult Function(List<ProjectModel> projects)? getProjectsSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProjectsLoading value) getProjectsLoading,
    required TResult Function(ProjectsFailure value) getProjectsFailure,
    required TResult Function(ProjectsSuccess value) getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProjectsLoading value)? getProjectsLoading,
    TResult? Function(ProjectsFailure value)? getProjectsFailure,
    TResult? Function(ProjectsSuccess value)? getProjectsSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProjectsLoading value)? getProjectsLoading,
    TResult Function(ProjectsFailure value)? getProjectsFailure,
    TResult Function(ProjectsSuccess value)? getProjectsSuccess,
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
    required TResult Function(List<ProjectModel> projects) getProjectsSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
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
    required TResult Function(ProjectsLoading value) getProjectsLoading,
    required TResult Function(ProjectsFailure value) getProjectsFailure,
    required TResult Function(ProjectsSuccess value) getProjectsSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProjectsLoading value)? getProjectsLoading,
    TResult? Function(ProjectsFailure value)? getProjectsFailure,
    TResult? Function(ProjectsSuccess value)? getProjectsSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProjectsLoading value)? getProjectsLoading,
    TResult Function(ProjectsFailure value)? getProjectsFailure,
    TResult Function(ProjectsSuccess value)? getProjectsSuccess,
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
abstract class _$$ProjectsLoadingImplCopyWith<$Res> {
  factory _$$ProjectsLoadingImplCopyWith(_$ProjectsLoadingImpl value,
          $Res Function(_$ProjectsLoadingImpl) then) =
      __$$ProjectsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsLoadingImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$ProjectsLoadingImpl>
    implements _$$ProjectsLoadingImplCopyWith<$Res> {
  __$$ProjectsLoadingImplCopyWithImpl(
      _$ProjectsLoadingImpl _value, $Res Function(_$ProjectsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsLoadingImpl implements ProjectsLoading {
  const _$ProjectsLoadingImpl();

  @override
  String toString() {
    return 'ProjectStates.getProjectsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
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
    required TResult Function(ProjectsLoading value) getProjectsLoading,
    required TResult Function(ProjectsFailure value) getProjectsFailure,
    required TResult Function(ProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProjectsLoading value)? getProjectsLoading,
    TResult? Function(ProjectsFailure value)? getProjectsFailure,
    TResult? Function(ProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProjectsLoading value)? getProjectsLoading,
    TResult Function(ProjectsFailure value)? getProjectsFailure,
    TResult Function(ProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsLoading != null) {
      return getProjectsLoading(this);
    }
    return orElse();
  }
}

abstract class ProjectsLoading implements ProjectStates {
  const factory ProjectsLoading() = _$ProjectsLoadingImpl;
}

/// @nodoc
abstract class _$$ProjectsFailureImplCopyWith<$Res> {
  factory _$$ProjectsFailureImplCopyWith(_$ProjectsFailureImpl value,
          $Res Function(_$ProjectsFailureImpl) then) =
      __$$ProjectsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProjectsFailureImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$ProjectsFailureImpl>
    implements _$$ProjectsFailureImplCopyWith<$Res> {
  __$$ProjectsFailureImplCopyWithImpl(
      _$ProjectsFailureImpl _value, $Res Function(_$ProjectsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProjectsFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectsFailureImpl implements ProjectsFailure {
  const _$ProjectsFailureImpl(this.message);

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
            other is _$ProjectsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsFailureImplCopyWith<_$ProjectsFailureImpl> get copyWith =>
      __$$ProjectsFailureImplCopyWithImpl<_$ProjectsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
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
    required TResult Function(ProjectsLoading value) getProjectsLoading,
    required TResult Function(ProjectsFailure value) getProjectsFailure,
    required TResult Function(ProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProjectsLoading value)? getProjectsLoading,
    TResult? Function(ProjectsFailure value)? getProjectsFailure,
    TResult? Function(ProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProjectsLoading value)? getProjectsLoading,
    TResult Function(ProjectsFailure value)? getProjectsFailure,
    TResult Function(ProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsFailure != null) {
      return getProjectsFailure(this);
    }
    return orElse();
  }
}

abstract class ProjectsFailure implements ProjectStates {
  const factory ProjectsFailure(final String message) = _$ProjectsFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProjectsFailureImplCopyWith<_$ProjectsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectsSuccessImplCopyWith<$Res> {
  factory _$$ProjectsSuccessImplCopyWith(_$ProjectsSuccessImpl value,
          $Res Function(_$ProjectsSuccessImpl) then) =
      __$$ProjectsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$ProjectsSuccessImplCopyWithImpl<$Res>
    extends _$ProjectStatesCopyWithImpl<$Res, _$ProjectsSuccessImpl>
    implements _$$ProjectsSuccessImplCopyWith<$Res> {
  __$$ProjectsSuccessImplCopyWithImpl(
      _$ProjectsSuccessImpl _value, $Res Function(_$ProjectsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$ProjectsSuccessImpl(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$ProjectsSuccessImpl implements ProjectsSuccess {
  const _$ProjectsSuccessImpl(final List<ProjectModel> projects)
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
    return 'ProjectStates.getProjectsSuccess(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsSuccessImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsSuccessImplCopyWith<_$ProjectsSuccessImpl> get copyWith =>
      __$$ProjectsSuccessImplCopyWithImpl<_$ProjectsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
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
    required TResult Function(ProjectsLoading value) getProjectsLoading,
    required TResult Function(ProjectsFailure value) getProjectsFailure,
    required TResult Function(ProjectsSuccess value) getProjectsSuccess,
  }) {
    return getProjectsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProjectsLoading value)? getProjectsLoading,
    TResult? Function(ProjectsFailure value)? getProjectsFailure,
    TResult? Function(ProjectsSuccess value)? getProjectsSuccess,
  }) {
    return getProjectsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProjectsLoading value)? getProjectsLoading,
    TResult Function(ProjectsFailure value)? getProjectsFailure,
    TResult Function(ProjectsSuccess value)? getProjectsSuccess,
    required TResult orElse(),
  }) {
    if (getProjectsSuccess != null) {
      return getProjectsSuccess(this);
    }
    return orElse();
  }
}

abstract class ProjectsSuccess implements ProjectStates {
  const factory ProjectsSuccess(final List<ProjectModel> projects) =
      _$ProjectsSuccessImpl;

  List<ProjectModel> get projects;
  @JsonKey(ignore: true)
  _$$ProjectsSuccessImplCopyWith<_$ProjectsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
