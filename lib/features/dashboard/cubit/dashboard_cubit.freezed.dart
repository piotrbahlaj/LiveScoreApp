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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
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
  }) {
    return initial(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
  }) {
    return initial?.call(scrollOffset, selectedDateIndex, selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scrollOffset, int selectedDateIndex,
            DashboardTab selectedTab)?
        initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
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
