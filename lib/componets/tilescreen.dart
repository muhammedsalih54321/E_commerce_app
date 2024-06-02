import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Tilescreen extends StatelessWidget {
  final Icon icon;
  final String name;
  const Tilescreen({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
                        leading: icon,
                        title: Text(
                  name,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ) ,
                      );
  }
}