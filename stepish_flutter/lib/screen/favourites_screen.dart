import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:sneaker_client/sneaker_client.dart';
import 'package:sneaker_flutter/components/mini_product_card.dart';

import '../main.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  BehaviorSubject<List<Brand>> productsStream = BehaviorSubject.seeded([]);

  @override
  void initState() {
    super.initState();
    client.brandEndPoint.getAllBrands().then(
      (products) {
        productsStream.value = products.reversed.toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
