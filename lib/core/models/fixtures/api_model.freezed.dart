// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fixtures _$FixturesFromJson(Map<String, dynamic> json) {
  return _Fixtures.fromJson(json);
}

/// @nodoc
mixin _$Fixtures {
  String get country => throw _privateConstructorUsedError;
  String get league => throw _privateConstructorUsedError;
  String get homeTeam => throw _privateConstructorUsedError;
  String get awayTeam => throw _privateConstructorUsedError;
  int get homeTeamGoals => throw _privateConstructorUsedError;
  int get awayTeamGoals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesCopyWith<Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesCopyWith<$Res> {
  factory $FixturesCopyWith(Fixtures value, $Res Function(Fixtures) then) =
      _$FixturesCopyWithImpl<$Res, Fixtures>;
  @useResult
  $Res call(
      {String country,
      String league,
      String homeTeam,
      String awayTeam,
      int homeTeamGoals,
      int awayTeamGoals});
}

/// @nodoc
class _$FixturesCopyWithImpl<$Res, $Val extends Fixtures>
    implements $FixturesCopyWith<$Res> {
  _$FixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? league = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? homeTeamGoals = null,
    Object? awayTeamGoals = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamGoals: null == homeTeamGoals
          ? _value.homeTeamGoals
          : homeTeamGoals // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamGoals: null == awayTeamGoals
          ? _value.awayTeamGoals
          : awayTeamGoals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixturesImplCopyWith<$Res>
    implements $FixturesCopyWith<$Res> {
  factory _$$FixturesImplCopyWith(
          _$FixturesImpl value, $Res Function(_$FixturesImpl) then) =
      __$$FixturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String league,
      String homeTeam,
      String awayTeam,
      int homeTeamGoals,
      int awayTeamGoals});
}

/// @nodoc
class __$$FixturesImplCopyWithImpl<$Res>
    extends _$FixturesCopyWithImpl<$Res, _$FixturesImpl>
    implements _$$FixturesImplCopyWith<$Res> {
  __$$FixturesImplCopyWithImpl(
      _$FixturesImpl _value, $Res Function(_$FixturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? league = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? homeTeamGoals = null,
    Object? awayTeamGoals = null,
  }) {
    return _then(_$FixturesImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeamGoals: null == homeTeamGoals
          ? _value.homeTeamGoals
          : homeTeamGoals // ignore: cast_nullable_to_non_nullable
              as int,
      awayTeamGoals: null == awayTeamGoals
          ? _value.awayTeamGoals
          : awayTeamGoals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixturesImpl implements _Fixtures {
  const _$FixturesImpl(
      {required this.country,
      required this.league,
      required this.homeTeam,
      required this.awayTeam,
      required this.homeTeamGoals,
      required this.awayTeamGoals});

  factory _$FixturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixturesImplFromJson(json);

  @override
  final String country;
  @override
  final String league;
  @override
  final String homeTeam;
  @override
  final String awayTeam;
  @override
  final int homeTeamGoals;
  @override
  final int awayTeamGoals;

  @override
  String toString() {
    return 'Fixtures(country: $country, league: $league, homeTeam: $homeTeam, awayTeam: $awayTeam, homeTeamGoals: $homeTeamGoals, awayTeamGoals: $awayTeamGoals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixturesImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.homeTeamGoals, homeTeamGoals) ||
                other.homeTeamGoals == homeTeamGoals) &&
            (identical(other.awayTeamGoals, awayTeamGoals) ||
                other.awayTeamGoals == awayTeamGoals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, league, homeTeam,
      awayTeam, homeTeamGoals, awayTeamGoals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixturesImplCopyWith<_$FixturesImpl> get copyWith =>
      __$$FixturesImplCopyWithImpl<_$FixturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixturesImplToJson(
      this,
    );
  }
}

abstract class _Fixtures implements Fixtures {
  const factory _Fixtures(
      {required final String country,
      required final String league,
      required final String homeTeam,
      required final String awayTeam,
      required final int homeTeamGoals,
      required final int awayTeamGoals}) = _$FixturesImpl;

  factory _Fixtures.fromJson(Map<String, dynamic> json) =
      _$FixturesImpl.fromJson;

  @override
  String get country;
  @override
  String get league;
  @override
  String get homeTeam;
  @override
  String get awayTeam;
  @override
  int get homeTeamGoals;
  @override
  int get awayTeamGoals;
  @override
  @JsonKey(ignore: true)
  _$$FixturesImplCopyWith<_$FixturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
