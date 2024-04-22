import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
      List<Map> products=[
          {
             'product_title':'amd-ryzen-5-5600g-gaming-desktop',
             'thumbnail' :'assets/images/amd-ryzen-5-5600g-gaming-desktop-pc-003-200x200.png',
              'discount_price':null,
              'original_price':'61500',
               'earn_point':'500',
              'save_money':null
          },
        {
          'product_title':'pro_gaming_pic',
          'thumbnail' :'assets/images/pro-240-g9-01-200x200.webp',
          'discount_price':'50000',
          'original_price':'55000',
          'earn_point':null,
          'save_money':'500',
        },
        {
          'product_title':'pro_gaming_pic',
          'thumbnail' :'assets/images/pentium.webp',
          'discount_price':'50000',
          'original_price':'55000',
          'earn_point':null,
          'save_money':null,
        },
      ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Featured Product',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          'Check & Get Your Desired Product!',
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
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: .65,
            ),
            itemBuilder: (context, index) {
              final product=products[index];
              return LayoutBuilder(builder: (context, constraints){
                 return Stack(
                   children: [
                     Container(
                       padding:EdgeInsets.all(8),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                             color: Colors.black.withOpacity(.1),
                           )),
                       child: Column(
                         children: [
                           Image.asset(
                             product['thumbnail'],
                           ),
                           Divider(
                             color: Colors.black.withOpacity(.1),
                           ),
                           Text(
                             product['product_title'],
                             style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold
                             ),
                             textAlign: TextAlign.center,
                             maxLines: 1,
                             overflow: TextOverflow.ellipsis,
                           ),
                           Row(
                             children: [
                               Text(
                               product['original_price'],
                                 style: TextStyle(
                                   color: Colors.redAccent,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                 ),
                               ),
                               SizedBox(width: 12,),
                               Text( product[ 'discount_price'] ?? '650000' ,
                                 style: TextStyle(
                                     color: Colors.black.withOpacity(.7),
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                     decoration: TextDecoration.lineThrough
                                 ),
                               ),
                             ],
                           )
                         ],
                       ),
                     ),
                  product['earn_point'] == null &&
                      product['save_money'] == null ? SizedBox()
                      : Positioned(
                        top:10,
                        child: Container(
                          height: 20,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          width:constraints.maxWidth *.6,
                          decoration: BoxDecoration(
                            color: Color(0xFF7B07BE),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )
                          ),
                           child: Text(
                         product['save_money']!=null ? 'Save:${product['save_money']}': 'Earn point:${product['earn_point']}',
                             style: TextStyle(
                                color: Colors.white,
                             ),
                           ),
                        ),
                      ),
                   ],
                 );
              });
            }),
      ],
    );
  }
}
