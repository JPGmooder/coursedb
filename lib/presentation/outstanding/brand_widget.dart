import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kursach/domain/model/brand_model.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({Key? key, required this.brand}) : super(key: key);
  final BrandModel brand;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CachedNetworkImage(
            imageUrl: brand.imagePath,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brand.name,
                style: Theme.of(context).textTheme.titleMedium,
                textScaleFactor: 0.8,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                brand.description,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        )
      ],
    );
  }
}
