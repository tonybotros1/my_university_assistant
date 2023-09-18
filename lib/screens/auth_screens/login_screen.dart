// Login Screen:

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/login.jpg',
                width: 200,
              ),
              SizedBox(
                height: 150,
                child: Center(
                    child: Text(
                  'Login',
                  style: GoogleFonts.mooli(
                      textStyle: const TextStyle(fontSize: 40),
                      color: Colors.grey.shade600),
                )),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffC1F4C5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      myTextFormField(
                          labelText: 'Email', hintText: 'Enter Your Email'),
                      myTextFormField(
                          labelText: 'Password',
                          hintText: 'Enter Your Password')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding myTextFormField({required labelText, required hintText}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 16, 30, 10),
      child: TextFormField(
        // controller: ,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(color: Colors.grey.shade700),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0)),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your name';
          }
          return null;
        },
      ),
    );
  }
}
