part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Initial;

  const factory DashboardState.loading({
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Loading;

  const factory DashboardState.failure(
    String message, {
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Failure;

  const factory DashboardState.success(
    FixturesEndpointModel fixtures,
    FixturesEndpointModel liveFixtures, {
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Success;

  const factory DashboardState.loggedIn(
    User? user, {
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = LoggedIn;

  const factory DashboardState.loggedOut({
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = LoggedOut;
}

enum DashboardTab { upcoming, score, favorites }
