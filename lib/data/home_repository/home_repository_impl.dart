import 'package:dio/dio.dart';
import 'package:shop_online_flutter/data/home_repository/home_repository.dart';
import 'package:shop_online_flutter/entities/product.dart';

class HomeRepositoryImpl implements HomeRepository {
  final dio = Dio(BaseOptions(baseUrl: "https://api.escuelajs.co/api/v1/"));

  @override
  Future<List<Product>> getProduct() async {
    try {
      final response = await dio.get('products');
      print(response);
      return Product.listFromJson(response.data);
    } on DioException {
      rethrow;
    }
  }
}
