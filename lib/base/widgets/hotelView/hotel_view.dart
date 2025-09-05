import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.55,
      height: 300,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.8,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}")
                )
              ),
            ),

            SizedBox(height: 10,),

            Text(
              hotel['place'],
              style: AppStyles.textStyle3,
            ),

            SizedBox(height: 5,),

            Text(
              hotel['destination'],
              style: AppStyles.textStyle2.copyWith(color: Colors.white),
            ),

            SizedBox(height: 5,),

            Text(
              "\$${hotel['price']}/night",
              style: AppStyles.header1,
            )
          ],
        )
      ),
    );
  }
}
