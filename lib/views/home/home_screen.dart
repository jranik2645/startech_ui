import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';
import 'package:star_tech_ui/utils/colors.dart';
import 'package:star_tech_ui/views/home/widgets/product_section.dart';
import 'package:star_tech_ui/widgets/custom_button.dart';
import 'package:star_tech_ui/widgets/custom_card.dart';
import 'package:star_tech_ui/widgets/custom_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> slider = [
      'https://www.startech.com.bd/image/cache/catalog/offer-page/free-delivery-cashback-ramadan-home-banner-982x500.png',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/happy-hour/happy-hour-ramadan-live-now-982x500.png',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/notice/notice-uttara-and-ps-982x500.jpg',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/ramadan-2023-ac-deal-home-banner-982x500.png'
    ];

    List<Map> icon = [
      {
        'title': 'Home Appliances',
        'icon': 'assets/icon/home.png',
      },
      {
        'title': 'Drone',
        'icon': 'assets/icon/drone-48x48.png',
      },
      {
        'title': 'Gimbal',
        'icon': 'assets/icon/gimbal-48x48.png',
      },
      {
        'title': 'Laptop',
        'icon': 'assets/icon/laptop-48x48.png',
      },
      {
        'title': 'Laptop Accessories',
        'icon': 'assets/icon/laptop-acc-icon-48x48.png',
      },
      {
        'title': 'TV',
        'icon': 'assets/icon/tv-48x48.png',
      },
      {
        'title': 'Mobile Phone',
        'icon': 'assets/icon/mobile-phone-48x48.png',
      },
      {
        'title': 'Mobile Accessories',
        'icon': 'assets/icon/mobile-phone-accessories-48x48.png',
      },
      {
        'title': 'Power Station',
        'icon': 'assets/icon/headphone-48x48.png',
      },
      {
        'title': 'VR(Virtual Reality)',
        'icon': 'assets/icon/bt-speaker-48x48.png',
      },
      {
        'title': 'Smart Watch',
        'icon': 'assets/icon/smart-watch-48x48.png',
      },
      {
        'title': 'Action Camera',
        'icon': 'assets/icon/action-camera-48x48.png',
      },
      {
        'title': 'Headphone',
        'icon': 'assets/icon/headphone-48x48.png',
      },
      {
        'title': 'Earbuds',
        'icon': 'assets/icon/earbuds-48x48.png',
      },
      {
        'title': 'Bluetooth Speakers',
        'icon': 'assets/icon/vr-48x48.png',
      },
      {
        'title': 'Gaming Console',
        'icon': 'assets/icon/gaming-console-48x48.png',
      },
    ];

      int currentIndex=0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.card_travel,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Slider Section
              CarouselSlider.builder(
                itemCount: slider.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          slider[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Compare Product Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.SecondaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'Compare Products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Custom_Filed(
                      hintText: 'Search and Select Product',
                      icon: Icons.search,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Custom_Filed(
                      hintText: 'Search and Select Product',
                      icon: Icons.search,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      title: 'View Comparison',
                      isBorderType: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomCard(
                    title: 'Laptop Finder',
                    icon: Icons.laptop,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomCard(
                    title: 'Raise a Complain',
                    icon: Icons.laptop,
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomCard(
                    title: 'Online Support',
                    icon: Icons.laptop,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomCard(
                    title: 'Servicing Center',
                    icon: Icons.laptop,
                  )),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10,
                          spreadRadius: .5)
                    ]),
                child: Marquee(
                  text: 'Join the dream coder company and enjoy the life.',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 10.0,
                  velocity: 50.0,
                  pauseAfterRound: Duration(seconds: 3),
                  startPadding: 20.0,
                  accelerationDuration: Duration(seconds: 3),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Featured Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Get Your Desired Product from Featured Category!',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: icon.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: .9
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                           color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black.withOpacity(.1),
                          )
                       ),
                      child: Center(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset(icon[index]['icon'] ,width: 40, height: 40,),
                               SizedBox(height: 5,),
                             Text(icon[index]['title'],
                              textAlign:TextAlign.center ,
                              style: TextStyle(
                                 fontSize: 11,
                                 fontWeight: FontWeight.w500

                              ),
                             ),
                           ],
                         ),
                      ),
                    );
                  }),
              SizedBox(
                height: 20,
              ),

              ProductSection(),
            ],
          ),
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             selectedItemColor:Colors.white,
             backgroundColor:AppColor.primaryColor,
             unselectedItemColor: Colors.white.withOpacity(.5),
             currentIndex:currentIndex ,
             onTap: (value){
                setState(() {
                  currentIndex=value;
                });
             },
            items: [
               BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Offers'),
              BottomNavigationBarItem(icon: Icon(Icons.offline_bolt_outlined),label: 'Happy_our'),
              BottomNavigationBarItem(icon: Icon(Icons.computer),label: 'Computer'),
              BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Compare'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
            ],
          ),
    );
  }
}
