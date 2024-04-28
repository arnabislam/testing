

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import 'package:testing/app/modules/documents/views/pick_image_view.dart';
import 'package:testing/app/modules/message/views/message_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView(this.imageFile,  {Key? key,}) : super(key: key);




   final TextEditingController _searchController= TextEditingController();
   final File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Container(


          decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Color(0xfff7f0f0)),

          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              labelText: '   Search here',
              suffixIcon: Icon(Icons.search),

            ),
          ), ),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Container(
           margin: EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(

              children: [


                const Expanded(
                  flex: 1,
                  child: CircleAvatar(

                    radius: 25,
                    child: Image(image: AssetImage("assets/images/man.png")),),
                ),

                Expanded(
                  flex: 4,
                  child: InkWell(
                    onTap: (){
                      Get.to(PickImageView());
                    },
                    child: Container(
                                height: 40,

                    child: const Center(
                      child: Text(
                        "What you sell",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                                    ),
                  ),),

              ],
            ),
          ),
          Expanded(


            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  child: Column(
                    children: [

                      Expanded(

                        flex: 6,
                        child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.blueGrey,
                        ),
                        child:
                        imageFile != null
                            ?Image.file(imageFile!)
                            : const Text('No image selected'),
                        // CachedNetworkImage(
                        //   imageUrl: "https://admin.regalfurniturebd.com/storage/uploads/fullsize/2022-05/sdc-201-sofa-cum-bed.jpg",
                        //   height: 150,
                        //   width: 200,
                        //   fit: BoxFit.fill,
                        // ),
                      ),),

                      const Expanded(flex: 1,child:  Text(
                        "Furniture for sale",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),),

                      SizedBox(height: 5,),
                      Expanded(flex: 1,child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(MessageView());
                            },
                            child: const Text(
                              "Message",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text("12500 SAR")
                        ],
                      ))

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
