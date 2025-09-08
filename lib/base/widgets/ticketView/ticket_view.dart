import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/ticketView/dashed_line.dart';
import 'package:ticket_app/base/widgets/ticketView/flight_path.dart';
import 'package:ticket_app/base/widgets/ticketView/plane_dot.dart';
import 'package:ticket_app/base/widgets/ticketView/text_style_ticket_low.dart';
import 'package:ticket_app/base/widgets/ticketView/text_style_ticket_top.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final Color? topColor;
  final Color? bottomColor;
  final Color? textColor;
  final Color? dotColor;
  final Color? planeColor;
  final Color? pathColor;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false, this.topColor, this.bottomColor, this.textColor, this.dotColor, this.planeColor, this.pathColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0 : 20),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: topColor ?? AppStyles.ticketBlue,
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
                      TextStyleTicket(
                        text: ticket["from"]["code"], 
                        textAlign: TextAlign.start,
                        color: textColor ?? Colors.white,
                      ),
            
                      Expanded(child: Container()),
            
                      PlaneDot(
                        color: dotColor ?? Colors.white,
                      ),
                      
                      Expanded(child: FlightPath(
                          totalWidth: size.width * 0.18,
                          colorPath: pathColor ?? Colors.white,
                          colorPlane: planeColor ?? Colors.white,
                        )
                      ),
            
                      PlaneDot(
                        color: dotColor ?? Colors.white,
                      ),
            
                      Expanded(child: Container()),
            
                      TextStyleTicket(
                        text: ticket["to"]["code"], 
                        textAlign: TextAlign.end,
                        color: textColor ?? Colors.white,
                        )
                    ],
                  ),
            
                  SizedBox(height: 3),
            
                  //show flying time and location names
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleTicketLow(
                          text: ticket["from"]["name"], 
                          textAlign: TextAlign.start,
                          color: textColor ?? Colors.white,
                        ),
                      ),
            
                      Expanded(child: Container()),
            
                      TextStyleTicketLow(
                        text: ticket["flying_time"], 
                        textAlign: TextAlign.center,
                        color: textColor ?? Colors.white,
                      ),
            
                      Expanded(child: Container()),
            
                      SizedBox(
                        width: 100,
                        child: TextStyleTicketLow(
                          text: ticket["to"]["name"], 
                          textAlign: TextAlign.end,
                          color: textColor ?? Colors.white,
                        ),
                      ),
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

                  Expanded(child: DashedLine(
                    dashCount: 20, 
                    width: 1,
                    color: pathColor ?? Colors.white,),
                  ),
            
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
                color: bottomColor ?? AppStyles.ticketOrange,
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
                      SizedBox(
                        width: 95,
                        child: TextStyleTicket(
                          text: ticket["date"], 
                          textAlign: TextAlign.start, 
                          color: textColor ?? Colors.white,
                        )
                      ),
            
                      Expanded(child: Container()),

                      TextStyleTicket(
                        text: ticket["departure_time"], 
                        textAlign: TextAlign.center,
                        color: textColor ?? Colors.white,
                      ),

                      Expanded(child: Container()),
            
                      SizedBox(
                        width: 95,
                        child: TextStyleTicket(
                          text: ticket["number"].toString(), 
                          textAlign: TextAlign.end,
                          color: textColor ?? Colors.white,
                        )
                      )
                    ],
                  ),
            
                  SizedBox(height: 3),
            
                  //show flying time
                  Row(
                    children: [
                      SizedBox(
                        width: 95,
                        child: TextStyleTicketLow(
                          text: "Date", 
                          textAlign: TextAlign.start,
                          color: textColor ?? Colors.white,
                        ),
                      ),
            
                      Expanded(child: Container()),
            
                      TextStyleTicketLow(
                        text: "Departure time", 
                        textAlign: TextAlign.center,
                        color: textColor ?? Colors.white,
                      ),
            
                      Expanded(child: Container()),
            
                      SizedBox(
                        width: 95,
                        child: TextStyleTicketLow(
                          text: "Number", 
                          textAlign: TextAlign.end,
                          color: textColor ?? Colors.white,
                        ),
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
