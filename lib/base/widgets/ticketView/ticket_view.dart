import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/ticketView/dashed_line.dart';
import 'package:ticket_app/base/widgets/ticketView/flight_path.dart';
import 'package:ticket_app/base/widgets/ticketView/plane_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width+0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
                )
              ),
              child: Column(
                children: [
                  //show departure and arrival
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.textStyle.copyWith(color: Colors.white),
                        
                      ),
            
                      Expanded(child: Container()),
            
                      PlaneDot(),
                      
                      Expanded(child: FlightPath(totalWidth: size.width * 0.18)),
            
                      PlaneDot(),
            
                      Expanded(child: Container()),
            
                      Text(
                        "LDN",
                        style: AppStyles.textStyle.copyWith(color: Colors.white),
                      )
                    ],
                  ),
            
                  SizedBox(height: 3),
            
                  //show flying time and location names
                  Row(
                    children: [
                      Text(
                        "New York",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                        
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "8H 30M",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "London",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                      )
                    ],
                  ),
            
                ]
              ),
            ),
            
            //dashed line part of ticket
            Container(
              height: 16,
              color: AppStyles.ticketOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppStyles.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),

                  Expanded(child: DashedLine(dashCount: 20, width: 1,),),
            
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppStyles.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //orange part of ticket
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
                )
              ),
              child: Column(
                children: [
                  //show departure and arrival
                  Row(
                    children: [
                      Text(
                        "1 MAY",
                        style: AppStyles.textStyle.copyWith(color: Colors.white),
                        
                      ),
            
                      Expanded(child: Container()),
            
                      // PlaneDot(),
                      
                      // Expanded(child: FlightPath(totalWidth: size.width * 0.18)),
            
                      // PlaneDot(),

                      Text(
                        "08:00 AM",
                        style: AppStyles.textStyle.copyWith(color: Colors.white),
                        
                      ),

                      Expanded(child: Container()),
            
                      Text(
                        "23",
                        style: AppStyles.textStyle.copyWith(color: Colors.white),
                      )
                    ],
                  ),
            
                  SizedBox(height: 3),
            
                  //show flying time and location names
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                        
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "Departure time",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                      ),
            
                      Expanded(child: Container()),
            
                      Text(
                        "Number",
                        style: AppStyles.textStyle2.copyWith(color: Colors.white),
                      )
                    ],
                  ),
            
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
