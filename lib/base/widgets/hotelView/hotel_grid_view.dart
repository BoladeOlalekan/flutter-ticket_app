import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}")
                  )
                ),
              ),
            ),

            SizedBox(height: 10,),

            Text(
              hotel['place'],
              style: AppStyles.textStyle4,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  hotel['destination'],
                  style: AppStyles.textStyle2.copyWith(color: Colors.white),
                ),

                Text(
                  "\$${hotel['price']}/night",
                  style: AppStyles.textStyle2,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
