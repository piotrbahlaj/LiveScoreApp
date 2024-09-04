part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = Initial;
  const factory DetailsState.loading() = Loading;
  const factory DetailsState.success(FixturesEndpointModel fixture) = Success;
  const factory DetailsState.failure(String errorMessage) = Failure;
}
