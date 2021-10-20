
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_state.freezed.dart';


@freezed
class StatState with _$StatState {
  factory StatState.loading() = StatStateLoading;
  factory StatState.loadedSuccess({
    required int numActive,
    required int numComplet
  }) = StatStateLoadedSuccess;
	
}
