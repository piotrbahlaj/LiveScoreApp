import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/details/ui/cubit/details_cubit.dart';
import 'package:live_score/features/details/ui/details_view.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsCubit>(
      create: (context) => Modular.get<DetailsCubit>(),
      child: const DetailsView(),
    );
  }
}
