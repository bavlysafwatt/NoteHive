// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_bar_state.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(AppBarInitial());

  changeStateNotSearching() {
    emit(AppBarNotSearch());
  }

  changeStateSearching() {
    emit(AppBarSearch());
  }
}
