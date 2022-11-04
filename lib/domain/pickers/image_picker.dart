import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickers {
  static Future<Uint8List?> pickImage() async {
    var pickedImage =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return null;
    return await pickedImage.readAsBytes();
  }
}
