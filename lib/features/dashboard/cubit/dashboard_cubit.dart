import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart' as drift;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:live_score/app_database.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';
import 'package:live_score/core/extensions/date_time_extension.dart';
import 'package:live_score/core/models/fixtures_endpoint/fixtures_endpoint_model.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final FootballRepositoryInterface repository;
  final AuthRepositoryInterface auth;
  final FirebaseAuth firebaseAuth;
  final AppDatabase database;
  DashboardCubit(this.repository, this.auth, this.firebaseAuth, this.database)
      : super(const DashboardState.initial());

  void setScrollOffset(double offset) {
    emit(state.copyWith(scrollOffset: offset));
  }

  void selectDate(int itemIndex) {
    DateTime now = DateTime.now();
    final selectedDate = DateFormat('yyyy-MM-dd')
        .format(now.generateDates(DashboardConstants.calendarRange)[itemIndex]);
    fetchFixtures(selectedDate);
    emit(state.copyWith(selectedDateIndex: itemIndex));
  }

  void selectTab(DashboardTab tab) {
    emit(state.copyWith(selectedTab: tab));
  }

  Future<void> fetchFixtures(String? date) async {
    emit(const DashboardState.loading());
    try {
      final selectedDate =
          date ?? DateFormat('yyyy-MM-dd').format(DateTime.now());
      final fixtures = await repository.getFixtures(date: selectedDate);
      final liveFixtures = await repository.getLiveFixtures(live: 'all');
      emit(
        DashboardState.success(
          fixtures,
          liveFixtures,
          selectedDateIndex: state.selectedDateIndex,
        ),
      );
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
      throw FirebaseAuthException(code: e.code);
    }
  }

  Future<void> loadUser() async {
    emit(const DashboardState.loading());
    final user = firebaseAuth.currentUser;
    emit(
      DashboardState.loggedIn(user),
    );
  }

  Future<int> cacheMatch(
    String homeTeam,
    String awayTeam,
    String matchDate,
    int? awayScore,
    int? homeScore,
    int id,
    String? homeLogo,
    String? awayLogo,
    String status,
  ) async {
    try {
      return database.cacheMatch(
        MatchCompanion.insert(
          homeTeam: homeTeam,
          awayTeam: awayTeam,
          matchDate: matchDate,
          homeScore: drift.Value(homeScore),
          awayScore: drift.Value(awayScore),
          id: drift.Value(id),
          homeLogo: drift.Value(homeLogo),
          awayLogo: drift.Value(awayLogo),
          status: status,
        ),
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<MatchData>> loadCachedMatches() async {
    try {
      return database.loadCachedMatches();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<int> deleteMatch(int id) async {
    try {
      return database.deleteMatch(id);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
