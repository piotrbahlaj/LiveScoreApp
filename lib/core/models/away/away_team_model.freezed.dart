// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'away_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Away _$AwayFromJson(Map<String, dynamic> json) {
  return _Away.fromJson(json);
}

/// @nodoc
mixin _$Away {
  String get name => throw _privateConstructorUsedError;
  bool? get winner => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwayCopyWith<Away> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwayCopyWith<$Res> {
  factory $AwayCopyWith(Away value, $Res Function(Away) then) =
      _$AwayCopyWithImpl<$Res, Away>;
  @useResult
  $Res call({String name, bool? winner, String? logo});
}

/// @nodoc
class _$AwayCopyWithImpl<$Res, $Val extends Away>
    implements $AwayCopyWith<$Res> {
  _$AwayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? winner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AwayImplCopyWith<$Res> implements $AwayCopyWith<$Res> {
  factory _$$AwayImplCopyWith(
          _$AwayImpl value, $Res Function(_$AwayImpl) then) =
      __$$AwayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool? winner, String? logo});
}

/// @nodoc
class __$$AwayImplCopyWithImpl<$Res>
    extends _$AwayCopyWithImpl<$Res, _$AwayImpl>
    implements _$$AwayImplCopyWith<$Res> {
  __$$AwayImplCopyWithImpl(_$AwayImpl _value, $Res Function(_$AwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? winner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$AwayImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AwayImpl implements _Away {
  const _$AwayImpl(
      {required this.name, required this.winner, required this.logo});

  factory _$AwayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AwayImplFromJson(json);

  @override
  final String name;
  @override
  final bool? winner;
  @override
  final String? logo;

  @override
  String toString() {
    return 'Away(name: $name, winner: $winner, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AwayImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, winner, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AwayImplCopyWith<_$AwayImpl> get copyWith =>
      __$$AwayImplCopyWithImpl<_$AwayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AwayImplToJson(
      this,
    );
  }
}

abstract class _Away implements Away {
  const factory _Away(
      {required final String name,
      required final bool? winner,
      required final String? logo}) = _$AwayImpl;

  factory _Away.fromJson(Map<String, dynamic> json) = _$AwayImpl.fromJson;

  @override
  String get name;
  @override
  bool? get winner;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$AwayImplCopyWith<_$AwayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
