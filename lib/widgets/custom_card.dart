import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
    final String title;
     final IconData icon;
  const CustomCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
         children: [
            CircleAvatar(
              backgroundColor: Color(0xFFEF4A23),
              child: Icon(
                icon,
                 color: Colors.white,
              ),
            ),
              SizedBox(
                  width: 10,
              ),
            Text( title,)
         ],
      ),
    );
  }
}
