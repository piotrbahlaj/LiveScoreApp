part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    @Default(DashboardConstants.initialScrollOffset) double scrollOffset,
    @Default(DashboardConstants.initialDate) int selectedDateIndex,
    @Default(DashboardTab.score) DashboardTab selectedTab,
  }) = Initial;
}

enum DashboardTab { upcoming, score, favorites }
