


import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DummyView extends GetView {
  const DummyView(this.imageFile, {Key? key, }) : super(key: key);
  final File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Image'),
      ),
      body: Center(
        child:
        imageFile != null
            ?Image.file(imageFile!)
            : const Text('No image selected'),
      ),
    );
  }
}