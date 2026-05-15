import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_online_flutter/data/home_repository/home_repository_impl.dart';
import 'package:shop_online_flutter/presentation/cubit/home_screen/home_cubit.dart';
import 'package:shop_online_flutter/presentation/screen/home_screen/home_screen.dart';

class HomeBlocProvider extends StatelessWidget {
  const HomeBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = HomeRepositoryImpl();

    return BlocProvider(
      create: (context) => HomeCubit(homeRepository: repository)..getProduct(),
      child: const HomeScreen(),
    );
  }
}
