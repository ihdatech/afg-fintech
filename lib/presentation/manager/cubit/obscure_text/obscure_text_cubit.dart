import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'obscure_text_state.dart';

part 'obscure_text_cubit.freezed.dart';

class ObscureTextCubit extends Cubit<ObscureTextState> {
  ObscureTextCubit() : super(const ObscureTextState.hide());

  Future<void> onPressed() async {
    if (state == const ObscureTextState.hide()) {
      emit(const ObscureTextState.show());
    } else {
      emit(const ObscureTextState.hide());
    }
  }
}
