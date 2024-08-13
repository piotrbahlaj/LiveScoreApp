import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';
import 'package:live_score/core/models/fixtures_endpoint/fixtures_endpoint_model.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final FootballRepositoryInterface repository;
  final AuthRepositoryInterface auth;
  DashboardCubit(this.repository, this.auth)
      : super(const DashboardState.initial());

  void setScrollOffset(double offset) {
    emit(state.copyWith(scrollOffset: offset));
  }

  void selectDate(int itemIndex) {
    emit(state.copyWith(selectedDateIndex: itemIndex));
  }

  void selectTab(DashboardTab tab) {
    emit(state.copyWith(selectedTab: tab));
  }

  Future<void> fetchFixtures() async {
    emit(const DashboardState.loading());
    try {
      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      final fixtures = await repository.getFixtures(date: today);
      final liveFixtures = await repository.getLiveFixtures(live: 'all');
      emit(DashboardState.success(fixtures, liveFixtures));
    } catch (e) {
      emit(DashboardState.failure(e.toString()));
    }
  }

  Future<void> logOut() async {
    emit(const DashboardState.loading());
    try {
      await auth.logOut();
      emit(const DashboardState.loggedOut());
    } on FirebaseAuthException catch (e) {
      print('Logout error: $e');
      throw FirebaseAuthException(code: e.code);
    }
  }
}
