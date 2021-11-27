import 'package:bloc/bloc.dart';

class ShowOnlyFavorite extends Cubit<bool> {
  ShowOnlyFavorite({bool defaultValue = false}) : super(defaultValue);
  
  void toggle() => emit(state);
}
