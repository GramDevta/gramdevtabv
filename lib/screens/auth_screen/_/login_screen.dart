import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _phoneController;
  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 150,
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/verified-concept-illustration_114360-5167.jpg?w=826&t=st=1660564097~exp=1660564697~hmac=cfefc93d2892d6f3812f6421a78c56bb6ac93b068f080a60cfcbc55d1ceb9bac"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _phoneController,
          )
        ],
      )),
    );
  }
}
