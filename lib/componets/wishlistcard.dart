import 'package:e_commerce_app/ui/screens/productscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlistcard extends StatelessWidget {
  const Wishlistcard({super.key, required this.img, required this.name, required this.price, required this.star, required this.index});
  final String img;
  final String name;
  final String price;
  final String star;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() =>index==0? Navigator.push(context,MaterialPageRoute(builder: (context)=>Productscreen())):null ,
      child: Card(
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
                    img,
                    height: 110.h,
                    width: 110.w,
                  ),
                ),
              ),
              Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                                  Icons.bookmark,
                                  color: Colors.orange,
                                )
                             
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
                      price,
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
                      star,
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
      ),
    );
  }
}