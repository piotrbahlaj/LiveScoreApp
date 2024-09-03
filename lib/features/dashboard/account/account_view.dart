import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:live_score/core/constants/routes.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/account/log_out_button.dart';
import 'package:live_score/core/ui/dashboard/home/loading_state_indicator.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  void _accountViewListener(BuildContext context) {
    final state = context.read<DashboardCubit>().state;
    if (state is LoggedOut) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            context.localizations.loggedOutSuccessfully,
          ),
        ),
      );
      Modular.to.navigate(Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();
    cubit.loadUser();
    return BlocConsumer<DashboardCubit, DashboardState>(
      listener: (context, state) => _accountViewListener(context),
      builder: (context, state) {
        if (state is LoggedIn) {
          final user = state.user;
          final email = user?.email;
          return Scaffold(
            backgroundColor: AppTheme.primary,
            appBar: AppBar(
              leadingWidth: 200,
              toolbarHeight: 100,
              backgroundColor: AppTheme.primary,
              leading: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  context.localizations.myAccount,
                  style: const TextStyle(
                    color: AppTheme.onSecondary,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppTheme.avatarBackground,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.person_outline_outlined,
                            size: 45,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    email!,
                    style: const TextStyle(
                      color: AppTheme.avatarBackground,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 50),
                  LogOutButton(
                    onPressed: () => cubit.logOut(),
                  ),
                ],
              ),
            ),
          );
        }
        return Container(
          color: AppTheme.primary,
          child: const LoadingStateIndicator(
            horizontalPadding: 0,
            verticalPadding: 20,
          ),
        );
      },
    );
  }
}
