import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Catagoriesscreen extends StatefulWidget {
  const Catagoriesscreen({super.key});

  @override
  State<Catagoriesscreen> createState() => _CatagoriesscreenState();
}

class _CatagoriesscreenState extends State<Catagoriesscreen> {
  List img = [
    'assets/images/img29.png',
    'assets/images/img30.png',
    'assets/images/img16.png',
    'assets/images/img31.png',
    'assets/images/img32.png',
    'assets/images/img33.png',
    'assets/images/img34.png',
  ];
  List name = [
    'iMacs',
    'macbooks',
    'iPads',
    'iPhones',
    'homepods',
    'airpods',
    'watches'

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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/img3.png',
              fit: BoxFit.cover,
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
                childAspectRatio: 340 / 400,
                crossAxisSpacing: 15,
                mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Card(
                shadowColor: Colors.black,
                elevation: 2,
                child: Container(
                  width: 170.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                          height: 110.h,
                          width: 130,
                          child: Image.asset(
                            img[index],
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height:25.h,
                      ),
                      Text(
                        name[index],
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
              );
                    
          }),
                    ),
                  ),
        ],
      ),
    );
  }
}
