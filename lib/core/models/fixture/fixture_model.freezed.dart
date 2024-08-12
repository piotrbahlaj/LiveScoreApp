// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fixture _$FixtureFromJson(Map<String, dynamic> json) {
  return _Fixture.fromJson(json);
}

/// @nodoc
mixin _$Fixture {
  String get date => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureCopyWith<Fixture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureCopyWith<$Res> {
  factory $FixtureCopyWith(Fixture value, $Res Function(Fixture) then) =
      _$FixtureCopyWithImpl<$Res, Fixture>;
  @useResult
  $Res call({String date, String timezone, Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FixtureCopyWithImpl<$Res, $Val extends Fixture>
    implements $FixtureCopyWith<$Res> {
  _$FixtureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? timezone = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FixtureImplCopyWith<$Res> implements $FixtureCopyWith<$Res> {
  factory _$$FixtureImplCopyWith(
          _$FixtureImpl value, $Res Function(_$FixtureImpl) then) =
      __$$FixtureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String timezone, Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FixtureImplCopyWithImpl<$Res>
    extends _$FixtureCopyWithImpl<$Res, _$FixtureImpl>
    implements _$$FixtureImplCopyWith<$Res> {
  __$$FixtureImplCopyWithImpl(
      _$FixtureImpl _value, $Res Function(_$FixtureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? timezone = null,
    Object? status = null,
  }) {
    return _then(_$FixtureImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixtureImpl implements _Fixture {
  const _$FixtureImpl(
      {required this.date, required this.timezone, required this.status});

  factory _$FixtureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixtureImplFromJson(json);

  @override
  final String date;
  @override
  final String timezone;
  @override
  final Status status;

  @override
  String toString() {
    return 'Fixture(date: $date, timezone: $timezone, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixtureImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, timezone, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixtureImplCopyWith<_$FixtureImpl> get copyWith =>
      __$$FixtureImplCopyWithImpl<_$FixtureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixtureImplToJson(
      this,
    );
  }
}

abstract class _Fixture implements Fixture {
  const factory _Fixture(
      {required final String date,
      required final String timezone,
      required final Status status}) = _$FixtureImpl;

  factory _Fixture.fromJson(Map<String, dynamic> json) = _$FixtureImpl.fromJson;

  @override
  String get date;
  @override
  String get timezone;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$FixtureImplCopyWith<_$FixtureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
