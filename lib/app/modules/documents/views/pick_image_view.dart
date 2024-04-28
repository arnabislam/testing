import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:testing/app/modules/documents/views/dummy_view.dart';
import 'package:testing/app/modules/home/views/home_view.dart';


class PickImageView extends StatefulWidget {
  PickImageView({Key? key}) : super(key: key);

  @override
  State<PickImageView> createState() => _PickImageViewState();
}

class _PickImageViewState extends State<PickImageView> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(


        child: Column(
          children: [
            _image != null
            ? Container(height: 300,
            decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.red),color: Colors.white),
            child: Image(image: MemoryImage(_image!),fit: BoxFit.fill,width: double.infinity,))
              //   ? CircleAvatar(
              // radius: 100,
              // backgroundImage: MemoryImage(_image!),
           // )
           //      : const CircleAvatar(
           //    radius: 100,
           //    backgroundImage: NetworkImage(
           //        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
           //  ),
            :Container(height: 300,

                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.red),color: Colors.white),
                child: const Image(image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                   )),


            // Positioned(
            //   bottom: -0,
            //   left: 140,
            //   child: IconButton(
            //     onPressed: () {
            //       showImagePickerOption(context);
            //     },
            //     icon: const Icon(Icons.add_a_photo),
            //   ),
            // ),
            ElevatedButton(onPressed: (){
              showImagePickerOption(context);
            }
                , child: Text("Add photo")),

            ElevatedButton(onPressed: (){
              Get.to(HomeView(selectedImage));
            }, child: Text("gfh"))




          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.blue[100],
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery")
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text("Camera")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future _pickImageFromGallery() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return;

    final imageBytes = await pickedImage.readAsBytes();
    final imagePath = pickedImage.path;
    print("Image Path from Gallery: $imagePath");
    setState(() {
      selectedImage = File(imagePath);
      _image = imageBytes;
    });
    Navigator.of(context).pop();
  }

  Future _pickImageFromCamera() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage == null) return;

    final imageBytes = await pickedImage.readAsBytes();
    final imagePath = pickedImage.path;
    print("Image Path from Camera: $imagePath");
    setState(() {
      selectedImage = File(imagePath);
      _image = imageBytes;
    });
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeView(selectedImage)
      ),
    );

  }
}


// class DisplayImageScreen extends StatelessWidget {
//   final File? imageFile;
//
//   const DisplayImageScreen({Key? key, this.imageFile}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Selected Image'),
//       ),
//       body: Center(
//         child: imageFile != null
//             ? Image.file(imageFile!) // Display the selected image
//             : const Text('No image selected'),
//       ),
//     );
//   }
// }