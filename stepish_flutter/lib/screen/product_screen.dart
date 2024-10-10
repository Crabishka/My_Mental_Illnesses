import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sneaker_client/sneaker_client.dart';

import '../main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
    required this.productId,
  });

  final int productId;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final BehaviorSubject<Product?> productStream = BehaviorSubject();

  @override
  void initState() {
    super.initState();
    client.productEndPoint.getProductById(widget.productId).then(
      (value) {
        productStream.value = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Product?>(
          stream: productStream,
          builder: (context, snapshot) {
            final product = snapshot.data;
            if (product == null) {
              return CircularProgressIndicator();
            }
            return ListView(
              children: [
                SizedBox(
                  height: 400,
                  child: PageView.builder(
                    itemCount: product.pictures?.length ?? 0,
                    itemBuilder: (context, index) {
                      final picture = product.pictures?[index];
                      if (picture == null) {
                        return Container();
                      }
                      return CachedNetworkImage(imageUrl: picture ?? '');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(product.name),
                      Gap(8),
                      Text('${product.price} ₽'),
                      Gap(8),
                      Text('${product.description}'),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
