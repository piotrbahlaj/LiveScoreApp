// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixtures_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixturesData _$FixturesDataFromJson(Map<String, dynamic> json) {
  return _FixturesData.fromJson(json);
}

/// @nodoc
mixin _$FixturesData {
  League get league => throw _privateConstructorUsedError;
  Teams get teams => throw _privateConstructorUsedError;
  Goals get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesDataCopyWith<FixturesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesDataCopyWith<$Res> {
  factory $FixturesDataCopyWith(
          FixturesData value, $Res Function(FixturesData) then) =
      _$FixturesDataCopyWithImpl<$Res, FixturesData>;
  @useResult
  $Res call({League league, Teams teams, Goals goals});

  $LeagueCopyWith<$Res> get league;
  $TeamsCopyWith<$Res> get teams;
  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$FixturesDataCopyWithImpl<$Res, $Val extends FixturesData>
    implements $FixturesDataCopyWith<$Res> {
  _$FixturesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueCopyWith<$Res> get league {
    return $LeagueCopyWith<$Res>(_value.league, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamsCopyWith<$Res> get teams {
    return $TeamsCopyWith<$Res>(_value.teams, (value) {
      return _then(_value.copyWith(teams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FixturesDataImplCopyWith<$Res>
    implements $FixturesDataCopyWith<$Res> {
  factory _$$FixturesDataImplCopyWith(
          _$FixturesDataImpl value, $Res Function(_$FixturesDataImpl) then) =
      __$$FixturesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({League league, Teams teams, Goals goals});

  @override
  $LeagueCopyWith<$Res> get league;
  @override
  $TeamsCopyWith<$Res> get teams;
  @override
  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class __$$FixturesDataImplCopyWithImpl<$Res>
    extends _$FixturesDataCopyWithImpl<$Res, _$FixturesDataImpl>
    implements _$$FixturesDataImplCopyWith<$Res> {
  __$$FixturesDataImplCopyWithImpl(
      _$FixturesDataImpl _value, $Res Function(_$FixturesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
  }) {
    return _then(_$FixturesDataImpl(
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixturesDataImpl implements _FixturesData {
  const _$FixturesDataImpl(
      {required this.league, required this.teams, required this.goals});

  factory _$FixturesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixturesDataImplFromJson(json);

  @override
  final League league;
  @override
  final Teams teams;
  @override
  final Goals goals;

  @override
  String toString() {
    return 'FixturesData(league: $league, teams: $teams, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixturesDataImpl &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.teams, teams) || other.teams == teams) &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, league, teams, goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixturesDataImplCopyWith<_$FixturesDataImpl> get copyWith =>
      __$$FixturesDataImplCopyWithImpl<_$FixturesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixturesDataImplToJson(
      this,
    );
  }
}

abstract class _FixturesData implements FixturesData {
  const factory _FixturesData(
      {required final League league,
      required final Teams teams,
      required final Goals goals}) = _$FixturesDataImpl;

  factory _FixturesData.fromJson(Map<String, dynamic> json) =
      _$FixturesDataImpl.fromJson;

  @override
  League get league;
  @override
  Teams get teams;
  @override
  Goals get goals;
  @override
  @JsonKey(ignore: true)
  _$$FixturesDataImplCopyWith<_$FixturesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
