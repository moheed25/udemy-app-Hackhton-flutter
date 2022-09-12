// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../controller/product_controler.dart';

// class ItemWidget extends StatelessWidget {
//   const ItemWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<ProductController>(
//       init: ProductController(),
//       builder: (controller) {
//         return GridView.count(
//           physics: NeverScrollableScrollPhysics(),
//           childAspectRatio: 0.9,
//           crossAxisCount: 2,
//           shrinkWrap: true,
//           children: [
//         for(var i=0 ; i < controller.products.length;i++)
//             Container(
//               padding:EdgeInsets.only() ,
//               margin:EdgeInsets.symmetric(vertical: 8,horizontal: 10) ,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20)
//               ),
//               child: Column(
//                 children: [
                  
//                   InkWell(
//                     onTap: (){},
//                     child: Container(
//                       decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30)
//               ),
//                       // margin: EdgeInsets.all(10),
//                       child: Image.network(controller.products[i].imageUrl!,fit: BoxFit.cover,),
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.width,
//                     ),
//                   ),
                 
                 
//                 ],
//               ),
//             )
//           ],
//         );
//       }
//     );
//   }
// }