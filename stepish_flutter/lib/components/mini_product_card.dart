import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sneaker_client/sneaker_client.dart';

class MiniProductCard extends StatelessWidget {
  const MiniProductCard({
    super.key,
    required this.product,
  });

  final Brand product;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          context.go('/catalog/product-details/${product.id}');
        },
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                imageUrl: product.pictures?.first ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.price.toString(),
                      ),
                      if (product.oldPrice != null)
                        Text(
                          product.oldPrice.toString(),
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
