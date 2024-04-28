import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testing/app/modules/auth/views/signin_view.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body:  SafeArea(
        child: Column(
          children: [


            // Container(child:  CachedNetworkImage(
            //   imageUrl: "https://admin.regalfurniturebd.com/storage/uploads/fullsize/2022-10/scb-20511.jpg",
            //   height: 200,
            //   width: double.infinity,
            //
            //   fit: BoxFit.fill,
            // ),)
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(child:  CachedNetworkImage(
                      imageUrl: "https://admin.regalfurniturebd.com/storage/uploads/fullsize/2022-10/scb-20511.jpg",
                      height: 200,
                      width: double.infinity,

                      fit: BoxFit.fill,
                    ),)
                  ],
                ),
                Positioned(
                    top: 2,
                    left: 2,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back))),
                Positioned(
                  top: 150,
                  child: Column(children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/man.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Saiful Islam",
              style:
              TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 33,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 4,

              // Set the elevation for the card
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(

                      margin: EdgeInsets.only(left: 8),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/age.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "25",

                          style: TextStyle(fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Card(
              elevation: 4, // Set the elevation for the card
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                          AssetImage("assets/images/location.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Area",
                          style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Jeddah",

                          style: TextStyle(fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Card(
              elevation: 4, // Set the elevation for the card
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/call.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Mobile Number",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "01524889563",

                          style: TextStyle(
                            fontSize: 15, ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Card(
              elevation: 4, // Set the elevation for the card
              margin: EdgeInsets.only(left: 10, right: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 11,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/gmail.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(

                          "Email:",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "arnabr131@gmail.com",

                          style: TextStyle(
                            fontSize: 15, ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            InkWell(
              onTap: (){
                Get.to(SigninView());
              },
              child: Card(
                elevation: 4, // Set the elevation for the card
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 11,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/log-out.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(

                            "Logout",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "From your Profile",

                            style: TextStyle(
                              fontSize: 15, ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}