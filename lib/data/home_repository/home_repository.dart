import 'package:shop_online_flutter/entities/product.dart';

abstract class HomeRepository {
  Future<List<Product>> getProduct();
}