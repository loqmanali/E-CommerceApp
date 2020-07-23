import 'package:flutter/material.dart';
import '../constant.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;

  String _errorMessage(String str) {
    switch(hint) {
      case 'Enter Your Name' : return 'Name Is Empty';
      case 'Enter Your Email' : return 'Email Is Empty';
      case 'Enter Your Password' : return 'Password Is Empty';
    }
  }

  CustomTextField({@required this.hint, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: (value){
          if(value.isEmpty){
            return _errorMessage(hint);
          }
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: KMainColor,
          ),
          filled: true,
          fillColor: KSecandaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: KSecandaryColor,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: KSecandaryColor,
              )),
        ),
      ),
    );
  }
}
