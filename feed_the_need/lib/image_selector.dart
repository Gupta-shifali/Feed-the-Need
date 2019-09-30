import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelector {
  static getImageFile(ImageSource source) async {
    File image = await ImagePicker.pickImage(source: source);
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: image.path, maxHeight: 512, maxWidth: 512);
    File result = await FlutterImageCompress.compressAndGetFile(
        croppedImage.path, croppedImage.path,
        quality: 50);
    return result;
  }
}
