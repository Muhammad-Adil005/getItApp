import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_app/screens/home_screen.dart';

import 'Api_services/api_services.dart';
import 'bloc/home_bloc.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(const GetItAppUsingDependencyInjection());
}

class GetItAppUsingDependencyInjection extends StatelessWidget {
  const GetItAppUsingDependencyInjection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc(apiService: locator<ApiService>()),
        child: const HomeScreen(),
      ),
    );
  }
}
