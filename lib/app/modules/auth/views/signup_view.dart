import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testing/app/modules/auth/views/signin_view.dart';
import 'package:testing/app/modules/bottom_navigation/views/bottom_navigation_view.dart';

class SignupView extends GetView {
   SignupView({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: rTextfield(text: "Enter name",preffixicon: const Icon(Icons.person),Controller:_nameController ,),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: rTextfield(text: "Email ",preffixicon: Icon(Icons.email_outlined),),
              ), const Padding(
                padding: EdgeInsets.all(8.0),
                child: rTextfield(text: "Number ",preffixicon: Icon(Icons.confirmation_num_outlined),),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: rTextfield(text: "Password ",preffixicon: const Icon(Icons.graphic_eq_sharp),Controller: _passWordController,),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: rTextfield(text: "Confirm Password ",preffixicon: const Icon(Icons.graphic_eq_sharp),Controller: _confirmPassController,),
              ),
            ],
          ),
          ElevatedButton(onPressed: (){
            Get.to(BottomNavigationView());
          }, child: Center(child: Text("Sign Up")))
        ],
      )
    );
  }
}
