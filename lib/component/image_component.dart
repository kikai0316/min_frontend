import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

DecorationImage assetImg(String file, {BoxFit? fit}) {
  return DecorationImage(
    image: AssetImage("assets/image/$file"),
    fit: fit ?? BoxFit.cover,
  );
}

DecorationImage networkImg(String url) {
  return DecorationImage(
    image: NetworkImage(url),
    fit: BoxFit.cover,
  );
}

DecorationImage memorytImg(Uint8List memory) {
  return DecorationImage(
    image: MemoryImage(memory),
    fit: BoxFit.cover,
  );
}

DecorationImage fileImg(File fileData) {
  return DecorationImage(
    image: FileImage(fileData),
    fit: BoxFit.cover,
  );
}

// String? notImg(String? img) {
//   return img == null ? "not.png" : null;
// }
