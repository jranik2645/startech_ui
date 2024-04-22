
import 'package:flutter/material.dart';
import 'package:star_tech_ui/utils/colors.dart';

class CustomButton extends StatelessWidget {
    final String title;
    final bool? isBorderType;
  const CustomButton({super.key, required this.title, this.isBorderType});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        decoration: BoxDecoration(
            color:isBorderType==true ?null : AppColor.primaryColor,
            borderRadius: BorderRadius.circular(15),
           border:isBorderType==true ? Border.all(
              color: AppColor.primaryColor,
              width: 2
           ):null,
        ),
         child: Center(
           child: Text(
             title,
              style: TextStyle(
                 color:isBorderType==true ? AppColor.primaryColor : Colors.white,
                 fontSize: 16,
                 fontWeight: FontWeight.w700,
              ),
           ),
         ),
    );
  }
}
