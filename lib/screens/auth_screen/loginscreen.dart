import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'otp_verify.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  void sendOTP() async {
    String phone = "+91" + phoneController.text.trim();
    if (phoneController.text.length == 10 && phoneController.text.isNotEmpty) {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        codeSent: (verificationId, resendToken) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Otp(verificationId: verificationId)));
        },
        verificationCompleted: (credential) {},
        verificationFailed: (ex) {
          log(ex.code.toString());
          showSnackBar(context, ex.code);
        },
        codeAutoRetrievalTimeout: (verficationId) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Otp(verificationId: verficationId),
            ),
          );
        },
        timeout: Duration(seconds: 30),
      );
    } else {
      showSnackBar(context, "Please enter valid phone number");
    }
  }

  @override
  void dispose() {
    phoneController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 30.0, right: 30),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 130,
              ),
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 100,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: TextField(
                    maxLength: 10,
                    maxLines: 1,
                    controller: phoneController,
                    obscureText: false,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: InkWell(
                  onTap: () {
                    sendOTP();
                  },
                  hoverColor: Colors.red,
                  splashColor: Colors.red,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
