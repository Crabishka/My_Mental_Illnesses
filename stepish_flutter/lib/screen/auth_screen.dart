import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sneaker_flutter/components/mini_product_card.dart';
import 'package:sneaker_flutter/main.dart';
import 'package:sneaker_client/sneaker_client.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  BehaviorSubject<List<Brand>> productsStream = BehaviorSubject.seeded([]);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        client.brandEndPoint.getAllBrands().then(
              (products) {
            productsStream.value = products;
          },
        );
      },
      child: Scaffold(
        body: StreamBuilder<List<Brand>>(
            stream: productsStream,
            builder: (context, snapshot) {
              final products = snapshot.data;
              if (products == null) {
                return CircularProgressIndicator();
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  final product = products[index];
                  return MiniProductCard(brand: product);
                },
              );
            }),
      ),
    );
  }
}
