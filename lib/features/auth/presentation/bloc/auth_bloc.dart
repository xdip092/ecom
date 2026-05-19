import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthCheckRequested>((event, emit) => emit(Unauthenticated()));
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      await Future<void>.delayed(const Duration(milliseconds: 400));
      emit(Authenticated(event.email));
    });
    on<LogoutRequested>((event, emit) => emit(Unauthenticated()));
  }
}
