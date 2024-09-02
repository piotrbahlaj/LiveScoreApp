// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  double get scrollOffset => throw _privateConstructorUsedError;
  int get selectedDateIndex => throw _privateConstructorUsedError;
  DashboardTab get selectedTab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {double scrollOffset, int selectedDateIndex, DashboardTab selectedTab});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scrollOffset, int selectedDateIndex, DashboardTab selectedTab});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$InitialImpl(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.initial(scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return initial(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return initial?.call(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DashboardState {
  const factory Initial(
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$InitialImpl;

  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scrollOffset, int selectedDateIndex, DashboardTab selectedTab});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$LoadingImpl(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl(
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.loading(scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return loading(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return loading?.call(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DashboardState {
  const factory Loading(
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$LoadingImpl;

  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      double scrollOffset,
      int selectedDateIndex,
      DashboardTab selectedTab});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.message,
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  final String message;
  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.failure(message: $message, scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return failure(message, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return failure?.call(message, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements DashboardState {
  const factory Failure(final String message,
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$FailureImpl;

  String get message;
  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FixturesEndpointModel fixtures,
      FixturesEndpointModel liveFixtures,
      double scrollOffset,
      int selectedDateIndex,
      DashboardTab selectedTab});

  $FixturesEndpointModelCopyWith<$Res> get fixtures;
  $FixturesEndpointModelCopyWith<$Res> get liveFixtures;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = null,
    Object? liveFixtures = null,
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$SuccessImpl(
      null == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as FixturesEndpointModel,
      null == liveFixtures
          ? _value.liveFixtures
          : liveFixtures // ignore: cast_nullable_to_non_nullable
              as FixturesEndpointModel,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FixturesEndpointModelCopyWith<$Res> get fixtures {
    return $FixturesEndpointModelCopyWith<$Res>(_value.fixtures, (value) {
      return _then(_value.copyWith(fixtures: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FixturesEndpointModelCopyWith<$Res> get liveFixtures {
    return $FixturesEndpointModelCopyWith<$Res>(_value.liveFixtures, (value) {
      return _then(_value.copyWith(liveFixtures: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.fixtures, this.liveFixtures,
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  final FixturesEndpointModel fixtures;
  @override
  final FixturesEndpointModel liveFixtures;
  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.success(fixtures: $fixtures, liveFixtures: $liveFixtures, scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.fixtures, fixtures) ||
                other.fixtures == fixtures) &&
            (identical(other.liveFixtures, liveFixtures) ||
                other.liveFixtures == liveFixtures) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fixtures, liveFixtures,
      scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return success(
        fixtures, liveFixtures, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return success?.call(
        fixtures, liveFixtures, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          fixtures, liveFixtures, scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements DashboardState {
  const factory Success(final FixturesEndpointModel fixtures,
      final FixturesEndpointModel liveFixtures,
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$SuccessImpl;

  FixturesEndpointModel get fixtures;
  FixturesEndpointModel get liveFixtures;
  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      double scrollOffset,
      int selectedDateIndex,
      DashboardTab selectedTab});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$LoggedInImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements LoggedIn {
  const _$LoggedInImpl(this.user,
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  final User? user;
  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.loggedIn(user: $user, scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return loggedIn(user, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return loggedIn?.call(user, scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user, scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements DashboardState {
  const factory LoggedIn(final User? user,
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$LoggedInImpl;

  User? get user;
  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scrollOffset, int selectedDateIndex, DashboardTab selectedTab});
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$LoggedOutImpl(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DashboardTab,
    ));
  }
}

/// @nodoc

class _$LoggedOutImpl implements LoggedOut {
  const _$LoggedOutImpl(
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final int selectedDateIndex;
  @override
  @JsonKey()
  final DashboardTab selectedTab;

  @override
  String toString() {
    return 'DashboardState.loggedOut(scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedOutImpl &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scrollOffset, selectedDateIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      __$$LoggedOutImplCopyWithImpl<_$LoggedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        initial,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loading,
    required TResult Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        failure,
    required TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
    required TResult Function(User? user, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)
        loggedIn,
    required TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)
        loggedOut,
  }) {
    return loggedOut(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult? Function(String message, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        failure,
    TResult? Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult? Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
  }) {
    return loggedOut?.call(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loading,
    TResult Function(String message, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        failure,
    TResult Function(
            FixturesEndpointModel fixtures,
            FixturesEndpointModel liveFixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)?
        success,
    TResult Function(User? user, double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedIn,
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(scrollOffset, selectedDateIndex, selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements DashboardState {
  const factory LoggedOut(
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$LoggedOutImpl;

  @override
  double get scrollOffset;
  @override
  int get selectedDateIndex;
  @override
  DashboardTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
