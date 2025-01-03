import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sneaker_flutter/components/mini_product_card.dart';
import 'package:sneaker_flutter/main.dart';
import 'package:sneaker_client/sneaker_client.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  BehaviorSubject<List<Brand>> productsStream = BehaviorSubject.seeded([]);

  @override
  void initState() {
    super.initState();
    client.brandEndPoint.getAllBrands().then(
      (products) {
        productsStream.value = products;
      },
    );
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
