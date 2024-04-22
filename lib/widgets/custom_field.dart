
import 'package:flutter/material.dart';

class Custom_Filed extends StatelessWidget {
    final String hintText;
    final  IconData icon;
  const Custom_Filed({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 10,
          spreadRadius: .5,
        ),
      ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: Icon(
             icon,
          ),
        ),
      ),
    );
  }
}
