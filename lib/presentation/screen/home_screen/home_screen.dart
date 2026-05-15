import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_online_flutter/presentation/components/cards/product_card.dart';
import 'package:shop_online_flutter/presentation/cubit/home_screen/home_cubit.dart';
import 'package:shop_online_flutter/presentation/cubit/home_screen/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    @override
    void initState() {
      super.initState();

      context.read<HomeCubit>().getProduct();
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
        centerTitle: true,
        elevation: 2,
        title: Text("Product catalog"),
      ),

      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final products = state.product;
          print(products);

          if (products == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return ProductCard(
                name: product.title,
                description: product.description,
              );
            },
          );
        },
      ),
    );
  }
}
