import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  //function
  void increment() => emit(state + 1);
  // void decrement() => emit(state - 1);
  //anathor func
  void decrement() {
    emit(state - 1);
  }

  void kali() {
    emit(state * 2);
  }

  void reset() {
    emit(0);
  }
}
