// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixtureResponseModel _$FixtureResponseModelFromJson(Map<String, dynamic> json) {
  return _FixtureResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FixtureResponseModel {
  List<FixturesData> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureResponseModelCopyWith<FixtureResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureResponseModelCopyWith<$Res> {
  factory $FixtureResponseModelCopyWith(FixtureResponseModel value,
          $Res Function(FixtureResponseModel) then) =
      _$FixtureResponseModelCopyWithImpl<$Res, FixtureResponseModel>;
  @useResult
  $Res call({List<FixturesData> response});
}

/// @nodoc
class _$FixtureResponseModelCopyWithImpl<$Res,
        $Val extends FixtureResponseModel>
    implements $FixtureResponseModelCopyWith<$Res> {
  _$FixtureResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<FixturesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixtureResponseModelImplCopyWith<$Res>
    implements $FixtureResponseModelCopyWith<$Res> {
  factory _$$FixtureResponseModelImplCopyWith(_$FixtureResponseModelImpl value,
          $Res Function(_$FixtureResponseModelImpl) then) =
      __$$FixtureResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FixturesData> response});
}

/// @nodoc
class __$$FixtureResponseModelImplCopyWithImpl<$Res>
    extends _$FixtureResponseModelCopyWithImpl<$Res, _$FixtureResponseModelImpl>
    implements _$$FixtureResponseModelImplCopyWith<$Res> {
  __$$FixtureResponseModelImplCopyWithImpl(_$FixtureResponseModelImpl _value,
      $Res Function(_$FixtureResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FixtureResponseModelImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<FixturesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixtureResponseModelImpl implements _FixtureResponseModel {
  _$FixtureResponseModelImpl({required final List<FixturesData> response})
      : _response = response;

  factory _$FixtureResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixtureResponseModelImplFromJson(json);

  final List<FixturesData> _response;
  @override
  List<FixturesData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'FixtureResponseModel(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixtureResponseModelImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixtureResponseModelImplCopyWith<_$FixtureResponseModelImpl>
      get copyWith =>
          __$$FixtureResponseModelImplCopyWithImpl<_$FixtureResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixtureResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FixtureResponseModel implements FixtureResponseModel {
  factory _FixtureResponseModel({required final List<FixturesData> response}) =
      _$FixtureResponseModelImpl;

  factory _FixtureResponseModel.fromJson(Map<String, dynamic> json) =
      _$FixtureResponseModelImpl.fromJson;

  @override
  List<FixturesData> get response;
  @override
  @JsonKey(ignore: true)
  _$$FixtureResponseModelImplCopyWith<_$FixtureResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
