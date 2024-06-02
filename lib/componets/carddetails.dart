import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class card extends StatefulWidget {
  final String img;
  final String name;
  final String price;
  final String star;
  final int index;
  final int count;

  const card(
      {super.key,
      required this.img,
      required this.name,
      required this.price,
      required this.star,
      required this.index,
      required this.count});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 2,
      child: Container(
        width: 170.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10.r),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10.r),
                    topEnd: Radius.circular(10.r)),
              ),
              width: 170.w,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  widget.img,
                  height: 110.h,
                  width: 110.w,
                ),
              ),
            ),
            widget.count == 1 || widget.count == 4
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        widget.index == 0
                            ? Icon(
                                Icons.bookmark,
                                color: Colors.orange,
                              )
                            : Icon(Icons.bookmark_border_outlined)
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        widget.index == 1 && widget.count != 3 
                            ? Icon(
                                Icons.bookmark,
                                color: Colors.orange,
                              )
                            : Icon(Icons.bookmark_border_outlined),
                           
                      ],
                    ),
                  ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.price,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/star.png'),
                  Text(
                    widget.star,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
