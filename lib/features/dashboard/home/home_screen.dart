import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:live_score/features/dashboard/home/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const home = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => Modular.get<DashboardCubit>(),
      child: const Scaffold(
        body: HomeView(),
      ),
    );
  }
}
