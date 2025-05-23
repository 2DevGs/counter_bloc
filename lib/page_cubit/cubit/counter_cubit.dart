import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(CounterStateInitial());

  void increment(){
    emit(CounterStateData(state.counter + 1));
  }  
  void decrement(){
    emit(CounterStateData(state.counter - 1));
  }

}