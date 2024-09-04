import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/fixtures_endpoint/fixtures_endpoint_model.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';

part 'details_cubit.freezed.dart';
part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final FootballRepositoryInterface repository;
  DetailsCubit(this.repository) : super(const DetailsState.initial());

  Future<void> getMatchDetails(int id) async {
    emit(const DetailsState.loading());
    try {
      final details = await repository.getMatchDetails(id: id);
      emit(DetailsState.success(details));
    } catch (e) {
      emit(DetailsState.failure(e.toString()));
    }
  }
}
