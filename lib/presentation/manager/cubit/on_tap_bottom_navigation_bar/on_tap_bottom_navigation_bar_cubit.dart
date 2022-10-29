import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_tap_bottom_navigation_bar_state.dart';
part 'on_tap_bottom_navigation_bar_cubit.freezed.dart';

class OnTapBottomNavigationBarCubit extends Cubit<OnTapBottomNavigationBarState> {
  OnTapBottomNavigationBarCubit() : super(const OnTapBottomNavigationBarState.initial());
  Future<void> onTap(int value) async {
    emit(OnTapBottomNavigationBarState.success(value));
  }
}