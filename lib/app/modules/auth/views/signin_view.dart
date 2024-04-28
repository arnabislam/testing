import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/app/modules/auth/views/signup_view.dart';

class SigninView extends GetView {
  SigninView({Key? key}) : super(key: key);

  final TextEditingController _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signin'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: rTextfield(
                  text: 'Enter name',

                  preffixicon: Icon(Icons.abc),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: rTextfield(
                  text: 'Enter Pass',
                  suffixicon: Icon(Icons.remove_red_eye_outlined),
                  preffixicon: Icon(Icons.abc),
                ),
              ),
            ],
          ),

          Column(
            children: [
              ElevatedButton(onPressed: (){}, child: Center(child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 19),))),
              SizedBox(height: 8,),
              InkWell(onTap:(){
                Get.to(SignupView());
              },child: Container(
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.centerRight,

                  child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blue),)))
            ],
          ),

        ],
      ),
    );
  }
}

class rTextfield extends StatelessWidget {
  final String text;
  final TextEditingController? Controller;
  final Widget? suffixicon;
  final Widget? preffixicon;

  const rTextfield({
    required this.text,
    this.Controller,
    this.suffixicon,
    this.preffixicon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: text,
        fillColor: const Color(0xffF8F9FA),
        filled: true,
        prefixIcon: preffixicon,
        suffixIcon: suffixicon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xfff99e0c), width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
