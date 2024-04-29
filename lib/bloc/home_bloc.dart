import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Api_services/api_services.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiService apiService;

  HomeBloc({required this.apiService}) : super(const HomeState()) {
    on<FetchData>(_fetchData);
    // add(FetchData());  When you have to called FetchData then you must add it
  }
  void _fetchData(FetchData event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(initialState: true)); // Show loading indicator

      // Fetch the fruits data from the API
      List<dynamic> fruitsData = await apiService.fetchData();

      // Emit the new state with the loaded fruits data
      emit(state.copyWith(fruits: fruitsData, initialState: false));
    } catch (error) {
      // Handle the error, perhaps emit a failure state
      rethrow;
    }
  }
}

// void _fetchData(FetchData event, Emitter<HomeState> emit) {
//   emit(state.copyWith(initialState: true));
// }
