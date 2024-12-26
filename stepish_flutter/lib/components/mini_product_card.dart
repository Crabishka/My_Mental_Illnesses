import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sneaker_client/sneaker_client.dart';

class MiniProductCard extends StatelessWidget {
  const MiniProductCard({
    super.key,
    required this.brand,
  });

  final Brand brand;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          context.go('/catalog/product-details/${brand.id}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                imageUrl: brand.pictures?.first ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(brand.name),
                  Text(
                    'Новая цена - ${brand.price}',
                  ),
                  if (brand.oldPrice != null)
                    Text(
                      'Старая цена - ${brand.oldPrice}',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  Gap(8),
                  Text(
                    brand.description ?? '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  Gap(16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
