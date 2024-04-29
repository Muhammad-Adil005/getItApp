/*
// old method


abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeSuccess extends HomeState {
  final List<dynamic> fruits;

  const HomeSuccess(this.fruits);

  @override
  List<Object> get props => [fruits];

  HomeSuccess copyWith({List<dynamic>? fruits}) {
    return HomeSuccess(
      fruits ?? this.fruits,
    );
  }
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];

  HomeError copyWith({String? message}) {
    return HomeError(
      message ?? this.message,
    );
  }
}
*/

// New Method

import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final List<dynamic>? fruits;
  final bool? initialState;

  const HomeState({this.fruits, this.initialState = false});

  HomeState copyWith({
    List<dynamic>? fruits,
    bool? initialState,
  }) {
    return HomeState(
      fruits: fruits ?? this.fruits,
      initialState: initialState ?? this.initialState,
    );
  }

  @override
  List<Object?> get props => [fruits, initialState];
}
