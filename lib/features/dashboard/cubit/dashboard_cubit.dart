import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());

  void setScrollOffset(double offset) {
    emit(DashboardState.initial(scrollOffset: offset));
  }

  void selectDate(int itemIndex) {
    emit(DashboardState.initial(selectedDateIndex: itemIndex));
  }

  void selectTab(DashboardTab tab) {
    emit(DashboardState.initial(selectedTab: tab));
  }
}
