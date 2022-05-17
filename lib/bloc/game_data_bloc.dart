// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bloc_freezed_auto_route/models/data_model.dart';
import 'package:bloc_freezed_auto_route/repo/game_repo.dart';
import 'package:meta/meta.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  final GameRepo gameRepo;

  GameDataBloc(this.gameRepo) : super(GameDataInitialState()) {
    on<LoadGameDataEvent>((event, emit) async {
      emit(GameDataLoadingState());
      try {
        List<DataModel>? apiResult = await gameRepo.getGamesData();
        if (apiResult == null) {
          emit(GameDataErrorState());
        } else {
          emit(GameDataLoadedState(apiResult: apiResult));
        }
      } catch (_) {
        emit(GameDataErrorState());
      }
    });
  }
}
