import 'package:equatable/equatable.dart';
import 'package:shop_online_flutter/entities/product.dart';

class HomeState extends Equatable {
  final List<Product>? product;

  const HomeState({this.product});

  @override
  List<Object?> get props => [product];

  HomeState copyWith({List<Product>? product}) {
    return HomeState(product: product ?? this.product);
  }
}
