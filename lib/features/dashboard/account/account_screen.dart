import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/dashboard/account/account_view.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => Modular.get<DashboardCubit>(),
      child: const AccountView(),
    );
  }
}
