import 'package:flutter/material.dart';
import 'package:storeui/constants.dart';

class SuggestPage extends StatelessWidget {
  const SuggestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('Assets/Images/lamp.png'),
          Container(
            height: 500,
            width: 414,

            decoration: BoxDecoration(
              gradient: grad,
            ),
          )
        ],),
      ),
    );
  }
}