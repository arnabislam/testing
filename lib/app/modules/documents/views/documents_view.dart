import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/documents_controller.dart';

class DocumentsView extends GetView<DocumentsController> {
  const DocumentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DocumentsView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(height: 200,
          decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),color: Colors.white)),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Background color
            ),
            child: Text(
              "Add Photos more",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
