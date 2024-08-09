part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Initial;

  const factory DashboardState.loading(
      {@Default(DashboardTab.score) DashboardTab selectedTab}) = Loading;

  const factory DashboardState.failure(
    String message, {
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Failure;

  const factory DashboardState.success(
    FixtureResponseModel fixtures, {
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Success;
}

enum DashboardTab { upcoming, score, favorites }
