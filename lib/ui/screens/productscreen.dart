import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  List img = [
    'assets/images/img13.png',
    'assets/images/img35.jpg',
    'assets/images/img36.jpg',
    'assets/images/img37.jpg',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.black,
                size: 35.sp,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 270,
                  child: CarouselSlider.builder(
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      width: double.infinity,
                      child: Image.asset(
                        img[itemIndex],
                      ),
                    ),
                    options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        autoPlay: false),
                  ),
                ),
                Positioned(
                  top: 260.h,
                  left: 170.w,
                  child: AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: img.length,
                    effect: WormEffect(
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                        radius: 10.r,
                        dotColor: Color.fromARGB(59, 13, 13, 13),
                        activeDotColor: Colors.orange),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '2020 Apple iPad Air 10.9"',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Colors',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF774488)),
                ),
                SizedBox(
                  width:10.w,
                ),
                Container(
                  height: 40.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFC9A19C)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 40.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFA1C89B)),
                ),
              ],
            ),
            SizedBox(height: 25.h,),
             Text(
              'Get Apple TV+ free for a year',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),),
               SizedBox(height: 10.h,),
             Text(
              'iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 30.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '\$599',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
                    SizedBox(height: 10.h,),
                     Container(
                  height: 70.h,
                  width:380.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.orange),
                      child: Center(
                        child:Text(
                    'Add to cart',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ) ,),
                ),

                    
          ],
        ),
      ),
    );
  }
}
