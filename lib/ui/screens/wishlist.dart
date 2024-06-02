
import 'package:e_commerce_app/componets/wishlistcard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List img = [
    'assets/images/img13.png',
    'assets/images/img18.png',
    'assets/images/img25.png',
    'assets/images/img28.png',
    'assets/images/img26.jpg',
    'assets/images/img27.png',
  ];
  List name = [
    'iPad Air 10.9\ninch  (2021)',
    'apple iMac\n24” (2021)',
    'iPad Pro 11-inch\n(2021)',
    'MacBook Pro\n13-inch (2021)',
    'AirPods\nMax',
    'Apple Watch\nSeries 7 (2021)'
  ];
  List price = [
    '\$599',
    '\$1299',
    '\$799',
    '\$1299',
    '\$549',
    '\$399',
  ];
  List star = ['4.9', '4.9', '4.2', '4.1', '4.9', '4.9'];
  int currentindex =0;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'My Wishlist',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 270 / 400,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return Wishlistcard(img: img[index], name: name[index], price: price[index], star: star[index], index: index,);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
