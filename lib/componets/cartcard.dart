import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartcard extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const Cartcard({super.key, required this.img, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 2,
              shadowColor: Colors.black,
              child: Stack(
              children: [
                Container(
                  height: 130.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      ),
                ),
                Container(
                  height: 120.h,
                  width: 120.w,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20.h,
                  left: 120,
                  child: Text(
                    name,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: 45.h,
                  left: 120,
                  child: Text(
                    price,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Positioned(
                  top: 90.h,
                  left: 120,
                  child: Row(
                    children: [
                      Text(
                        'Quantity',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 30.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                  ),
                                )),
                            Text(
                              '1',
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 8.h,
                    left: 335,
                    child: Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.black,
                    )),
              ],
            ),);
  }
}