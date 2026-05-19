import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => AuthBloc());
}

List<BlocProvider> get blocProviders => [
      BlocProvider<AuthBloc>(create: (_) => sl<AuthBloc>()),
    ];
