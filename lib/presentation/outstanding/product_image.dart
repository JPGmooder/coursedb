import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/pickers/image_picker.dart';

class ProductImage extends StatelessWidget {
  const ProductImage(
      {Key? key,
      this.isLeading = false,
      this.imageData,
      this.setImage,
      this.url,
      this.onDelete})
      : super(key: key);
  final String? url;
  final Uint8List? imageData;
  final bool isLeading;
  final void Function(
    Uint8List? image,
  )? setImage;
  final void Function()? onDelete;
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      onPressed: imageData != null || url != null
          ? null
          : () {
              ImagePickers.pickImage().then((value) {
                if (value != null) {
                  setImage!(value);
                }
              });
            },
      child: imageData == null && url == null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Text(
                    isLeading
                        ? "Добавить обложку товара"
                        : "Добавить галлерейную фотографию",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            )
          : Stack(
              children: [
                ClipRRect(
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 800, maxHeight: 600),
                        child: url != null
                            ? CachedNetworkImage(imageUrl: url!)
                            : Image.memory(imageData!)),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                Positioned(
                  right: 0,
                  top: 0,
                  child: FloatingActionButton(
                    onPressed: onDelete,
                    mini: true,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      color: Colors.red[300],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
