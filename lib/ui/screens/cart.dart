

import 'package:e_commerce_app/componets/cartcard.dart';
import 'package:e_commerce_app/ui/screens/checkoutscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {

  List img =[
    'assets/images/img13.png',
    'assets/images/img13.png'
  ];
   List name =[
    '2020 Apple iPad Air 10.9"',
    'Apple iMac  24” (2021)'
  ];
   List price =[
    '\$599',
    '\$1299'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
        ),
        title: Text(
          'iDrip',
          style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 2),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35.sp,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 40.h,
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xB2F6AE2D)),
              child: Center(
                child: Text(
                  'Delivery for FREE until the end of the month',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Cartcard(img: img[0], name: name[0], price: price[0]),
            SizedBox(height: 30.h,),
             Cartcard(img: img[1], name: name[1], price: price[1]),
             SizedBox(height: 110.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\$1898',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
                SizedBox(height: 10.h,),
                     GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>Checkoutscreen())),
                       child: Container(
                                         height: 70.h,
                                         width:380.w,
                                         decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.orange),
                        child: Center(
                          child:Text(
                                           'Checkout',
                                           style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                                           ),
                                         ) ,),
                                       ),
                     ),
            
          ],
        ),
      ),
    );
  }
}
