import 'package:e_commerce_app/componets/carddetails.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Ipaddetails extends StatefulWidget {
  const Ipaddetails({super.key});

  @override
  State<Ipaddetails> createState() => _IpaddetailsState();
}

class _IpaddetailsState extends State<Ipaddetails> {
  List img = [
    'assets/images/img13.png',
    'assets/images/img14.png',
    'assets/images/img15.png',
    'assets/images/img16.png',
    'assets/images/img25.png',
  ];

  List name = [
    'iPad Air 10.9\ninch  (2021)',
    'iPad 10.2-inch\n(2021)',
    'iPad mini 8.3-\ninch(2021)',
    'iPad Pro 12.9-\ninch(2021)',
    'iPad Pro 11-inch\n(2021)'
  ];

  List price = [
    '\$599',
    '\$329',
    '\$499',
    '\$1099',
    '\$799',
  ];

  List star = ['4.9', '4.1', '4.9', '4.9', '4.2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
      body: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/img2.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.h,
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
                  return card(
                      img: img[index],
                      name: name[index],
                      price: price[index],
                      star: star[index],
                      index: index,
                      count: 3);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
