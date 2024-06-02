import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/componets/carddetails.dart';
import 'package:e_commerce_app/ui/screens/ipaddetailscreen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List img1 = [
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
    'assets/images/img8.png',
  ];
  List name1 = [
    'apple iMac\n24” (2021)',
    'Apple Watch SE\n(2021)',
    'MacBook Pro 16-\ninch(2021) ',
    'iphone 13 mini\n(2021)',
  ];
  List price1 = [
    '\$1299',
    '\$279',
    '\$2499',
    '\$729',
  ];
  List star1 = [
    '4.9',
    '4.9',
    '4.9',
    '4.9',
  ];
  List img3 = [
    'assets/images/img13.png',
    'assets/images/img14.png',
    'assets/images/img15.png',
    'assets/images/img16.png',
  ];
  List name3 = [
    'iPad Air 10.9\ninch  (2021)',
    'iPad 10.2-inch\n(2021)',
    'iPad mini 8.3-\ninch(2021)',
    'iPad Pro 12.9-\ninch(2021)',
  ];
  List price3 = [
    '\$599',
    '\$329',
    '\$499',
    '\$1099',
  ];
  List star3 = [
    '4.9',
    '4.1',
    '4.9',
    '4.9',
  ];
  List img4 = [
    'assets/images/img17.png',
    'assets/images/img18.png',
    'assets/images/img19.png',
    'assets/images/img20.png',
  ];
  List name4 = [
    'Pro Display XDR\n32-inch',
    'apple iMac\n24” (2021)',
    'apple iMac\n27”',
    'Mac Pro\n(2020)',
  ];
  List price4 = [
    '\$4999',
    '\$1299',
    '\$1500',
    '\$5999',
  ];
  List star4 = [
    '4.9',
    '4.1',
    '4.9',
    '4.9',
  ];
  List img5 = [
    'assets/images/img21.png',
    'assets/images/img22.png',
    'assets/images/img23.png',
    'assets/images/img24.png',
  ];
  List name5 = [
    'iPhone SE\n(2020)',
    'iPhone 12 mini\n(2020)',
    'iPhone 13\n(2021)',
    'iphone 13 mini\n(2021)',
  ];
  List price5 = [
    '\$399',
    '\$729',
    '\$829',
    '\$729',
  ];
  List star5 = [
    '4.6',
    '4.5',
    '4.1',
    '4.9',
  ];

  List img = [
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.jpg'
  ];
  List img2 = [
    'assets/images/img9.png',
    'assets/images/img10.png',
    'assets/images/img11.png',
    'assets/images/img12.png'
  ];
  List name2 = [
    'iPhone',
    'iPad',
    'mac',
    'macbook',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
           
           
          },
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
      
      body: SingleChildScrollView(
        
        child: Column(
          children: [
         
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () {
                currentIndex == 0
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Ipaddetails()))
                    : null;
              },
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      width: double.infinity,
                      child: Image.asset(
                        img[itemIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                    options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        autoPlay: true),
                  ),
                  Positioned(
                    top: 210.h,
                    left: 160.w,
                    child: AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: img.length,
                      effect: WormEffect(
                          dotHeight: 10.h,
                          dotWidth: 10.w,
                          radius: 10.r,
                          dotColor: Color.fromARGB(104, 255, 255, 255),
                          activeDotColor: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Deals',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'SEE ALL',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 250.h,
                child: ListView.builder(
                  itemCount: img1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: card(
                          img: img1[index],
                          name: name1[index],
                          price: price1[index],
                          star: star1[index],
                          index: index,
                          count: 1,
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CATEGORIES',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'SEE ALL',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 120.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: img2.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                                height: 70.h,
                                width: 60,
                                child: Image.asset(
                                  img2[index],
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              name2[index],
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'iPhone',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'SEE ALL',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 250.h,
                child: ListView.builder(
                  itemCount: img5.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: card(
                          img: img5[index],
                          name: name5[index],
                          price: price5[index],
                          star: star5[index],
                          index: index,
                          count: 2,
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'iPad',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'SEE ALL',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 250.h,
                child: ListView.builder(
                  itemCount: img3.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: card(
                          img: img3[index],
                          name: name3[index],
                          price: price3[index],
                          star: star3[index],
                          index: index,
                          count: 3,
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'mac',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'SEE ALL',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 250.h,
                child: ListView.builder(
                  itemCount: img4.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: card(
                          img: img4[index],
                          name: name4[index],
                          price: price4[index],
                          star: star4[index],
                          index: index,
                          count: 4,
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
