import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(
      {Key? key,
      required this.product,
      required this.count,
      required this.currentOrg,
      required this.onDelete})
      : super(key: key);
  final ProductModel product;
  final OrganizationModel? currentOrg;
  final int count;
  final void Function(int) onDelete;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Dismissible(
        background: ColoredBox(
          color: Colors.red[300]!,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ))),
        ),
        key: ValueKey(product.productId),
        onDismissed: (_) {
          onDelete(product.productId);
        },
        child: ListTile(
            onTap: currentOrg == null
                ? null
                : () => showBottomSheet(
                    context: context,
                    builder: (ctx) => ProductScreen(
                        currentProduct: product, currentOrg: currentOrg!)),
            leading: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 70, maxHeight: 70),
              child: CachedNetworkImage(
                imageUrl: product.photoAlbum.first,
              ),
            ),
            title: Text(
              product.name,
              textScaleFactor: product.name.length > 15 ? 0.7 : 1,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            trailing: GradientMask(
              size: 50,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              child: Text(
                product.price.toString(),
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white54),
              ),
            ),
            subtitle: Text(
              '${count} шт.',
              style: Theme.of(context).textTheme.labelMedium,
            )),
      ),
    );
  }
}
