import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';
import 'package:live_score/core/models/fixture_response/fixture_response_model.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final FootballRepositoryInterface repository;
  DashboardCubit(this.repository) : super(const DashboardState.initial());

  void setScrollOffset(double offset) {
    emit(DashboardState.initial(scrollOffset: offset));
  }

  void selectDate(int itemIndex) {
    emit(DashboardState.initial(selectedDateIndex: itemIndex));
  }

  void selectTab(DashboardTab tab) {
    emit(DashboardState.initial(selectedTab: tab));
  }

  Future<void> fetchFixtures() async {
    emit(const DashboardState.loading());
    try {
      final FixtureResponseModel fixtures = await repository.getFixtures();
      emit(DashboardState.success(fixtures));
    } catch (e) {
      emit(DashboardState.failure(e.toString()));
    }
  }
}
