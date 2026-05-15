import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_online_flutter/data/home_repository/home_repository.dart';
import 'package:shop_online_flutter/entities/product.dart';
import 'package:shop_online_flutter/presentation/cubit/home_screen/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;

  HomeCubit({required this.homeRepository}) : super(const HomeState());

  Future<void> getProduct() async {
    final product = await homeRepository.getProduct();
    emit(state.copyWith(product: product));
  }
}
