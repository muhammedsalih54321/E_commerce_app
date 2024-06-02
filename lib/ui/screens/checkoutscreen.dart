import 'package:e_commerce_app/componets/tilescreen.dart';
import 'package:e_commerce_app/ui/screens/ordersuccescreen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkoutscreen extends StatefulWidget {
  const Checkoutscreen({super.key});
 

  @override
  State<Checkoutscreen> createState() => _CheckoutscreenState();
}
//  List img=['assets/images/img38.png','assets/images/img39.png','assets/images/img40.png'];
//     List<String> name=['**** **** **** 1234','**** **** **** 1234','**** **** **** 1234'];
class _CheckoutscreenState extends State<Checkoutscreen> {
  
    String?selectedvalue;



  
 
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Text(
          'checkout',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping information',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'change',
                  style: GoogleFonts.roboto(
                    color: Colors.orange,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
                elevation: 2,
                shadowColor: Colors.black,
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Tilescreen(
                          icon: Icon(
                            Icons.person_outline_rounded,
                            size: 30,
                            color: Colors.black,
                          ),
                          name: 'jane alderson'),
                      Tilescreen(
                          icon: Icon(
                            Icons.location_on_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          name: '221B Baker Street\nLondon , UK'),
                      Tilescreen(
                          icon: Icon(
                            Icons.phone_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          name: '+123456789')
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Method',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 2,
                shadowColor: Colors.black,
                child: Container(
                  height: 230.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [RadioListTile(
                      activeColor: Colors.orange,
                          title: Row(
                            children: [
                              Image.asset('assets/images/img38.png'),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                '**** **** **** 1234',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          value:'value1',
                          groupValue:selectedvalue,
                          onChanged: (value) {
                            setState(() {
                             selectedvalue=value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          activeColor: Colors.orange,
                          title: Row(
                            children: [
                              Image.asset('assets/images/img39.png'),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                '**** **** **** 1234',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          value:'value2',
                          groupValue:selectedvalue,
                          onChanged: (value) {
                            setState(() {
                             selectedvalue=value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          activeColor: Colors.orange,
                          title: Row(
                            children: [
                              Image.asset('assets/images/img40.png'),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                '**** **** **** 1234',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          value:'value3',
                          groupValue:selectedvalue,
                          onChanged: (value) {
                            setState(() {
                             selectedvalue=value.toString();
                            });
                          },
                        ),],)
                )),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$1898',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Ordersuccess())),
              child: Container(
                height: 70.h,
                width: 380.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                child: Center(
                  child: Text(
                    'Confirm & Pay',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

