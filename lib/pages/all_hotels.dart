import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_json.dart';
import 'package:ticket_app/base/widgets/hotelView/hotel_grid_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppStyles.backgroundColor,
        title: Text(
          "All Hotels",
          style: AppStyles.header1.copyWith(fontSize: 25),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: .9
            ), 
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              var singleHotel = hotelList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context, 
                    AppRoutes.hotelDetails,
                    arguments: {
                      'index': index
                    }
                  );
                },
                child: HotelGridView(hotel: singleHotel,),
              );
            }
          ),
        ),
      ),
    );
  }
}
