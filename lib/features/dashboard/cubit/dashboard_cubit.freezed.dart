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
            FixtureResponseModel fixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
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
    TResult? Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
    TResult Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
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
            FixtureResponseModel fixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
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
    TResult? Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
    TResult Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
            FixtureResponseModel fixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
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
    TResult? Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
    TResult Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
            FixtureResponseModel fixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
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
    TResult? Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
    TResult Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
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
      {FixtureResponseModel fixtures,
      double scrollOffset,
      int selectedDateIndex,
      DashboardTab selectedTab});

  $FixtureResponseModelCopyWith<$Res> get fixtures;
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
    Object? scrollOffset = null,
    Object? selectedDateIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$SuccessImpl(
      null == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as FixtureResponseModel,
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
  $FixtureResponseModelCopyWith<$Res> get fixtures {
    return $FixtureResponseModelCopyWith<$Res>(_value.fixtures, (value) {
      return _then(_value.copyWith(fixtures: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.fixtures,
      {this.scrollOffset = DashboardConstants.initialScrollOffset,
      this.selectedDateIndex = DashboardConstants.initialDate,
      this.selectedTab = DashboardTab.score});

  @override
  final FixtureResponseModel fixtures;
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
    return 'DashboardState.success(fixtures: $fixtures, scrollOffset: $scrollOffset, selectedDateIndex: $selectedDateIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.fixtures, fixtures) ||
                other.fixtures == fixtures) &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fixtures, scrollOffset, selectedDateIndex, selectedTab);

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
            FixtureResponseModel fixtures,
            double scrollOffset,
            int selectedDateIndex,
            DashboardTab selectedTab)
        success,
  }) {
    return success(fixtures, scrollOffset, selectedDateIndex, selectedTab);
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
    TResult? Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
  }) {
    return success?.call(
        fixtures, scrollOffset, selectedDateIndex, selectedTab);
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
    TResult Function(FixtureResponseModel fixtures, double scrollOffset,
            int selectedDateIndex, DashboardTab selectedTab)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(fixtures, scrollOffset, selectedDateIndex, selectedTab);
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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements DashboardState {
  const factory Success(final FixtureResponseModel fixtures,
      {final double scrollOffset,
      final int selectedDateIndex,
      final DashboardTab selectedTab}) = _$SuccessImpl;

  FixtureResponseModel get fixtures;
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
