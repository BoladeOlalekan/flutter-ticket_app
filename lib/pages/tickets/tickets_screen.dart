import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_json.dart';
import 'package:ticket_app/base/widgets/ticketView/dashed_line.dart';
import 'package:ticket_app/base/widgets/ticketView/text_style_ticket_low.dart';
import 'package:ticket_app/base/widgets/ticketView/text_style_ticket_top.dart';
import 'package:ticket_app/base/widgets/ticketView/ticket_view.dart';
import 'package:ticket_app/pages/search/search_widgets/app_ticket_tabs.dart';
import 'package:ticket_app/pages/tickets/ticket_widgets/ticket_positioned_circle.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {

  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map && args.containsKey('index')) {
      ticketIndex = args['index'] as int;
    } else {
      ticketIndex = 0;
    }

    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.backgroundColor,
        title: Text(
          "Tickets",
          style: AppStyles.header1.copyWith(fontSize: 35),
        ),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            children: [
              AppTicketTabs(
                leftText: "Upcoming",
                rightText: "Previous",
              ),
          
              SizedBox(height: 20,),
          
              //Full Tickets
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  topColor: Colors.white,
                  bottomColor: Colors.white,
                  topTextColor: AppStyles.textColor,
                  bottomTextColor: Colors.grey,
                  dotColor: AppStyles.dotColor,
                  planeColor: AppStyles.planeColor,
                  pathColor: AppStyles.pathColor,
                  showDivider: true,
                  showCircle: true,
                  bottomRadius: BorderRadius.only(),
                ),
              ),
          
              SizedBox(height: 1,),
              
              //Second part of ticket
              Container(
                color: AppStyles.borderWhite,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleTicket(
                          text: "Flutter DB",
                          textAlign: TextAlign.start,
                          color: AppStyles.textColor,
                          ),
                          TextStyleTicketLow(
                          text: "Passenger",
                          textAlign: TextAlign.start,
                          color: Colors.grey,
                          ),
                        ],
                        ),
                      ),
          
                      SizedBox(width: 20),
          
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleTicket(
                          text: "5338 9472",
                          textAlign: TextAlign.end,
                          color: AppStyles.textColor,
                          ),
                          TextStyleTicketLow(
                          text: "Passport",
                          textAlign: TextAlign.end,
                          color: Colors.grey,
                          ),
                        ],
                        ),
                      ),
                      ],
                    ),
          
                    SizedBox(height: 20,),
          
                    //Dashed Line
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                      Expanded(
                        child: DashedLine(
                        dashCount: 20,
                        width: 1,
                        color: AppStyles.pathColor,
                        ),
                      ),
                      ],
                    ),
          
                    SizedBox(height: 20,),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleTicket(
                          text: "2449 5544",
                          textAlign: TextAlign.start,
                          color: AppStyles.textColor,
                          ),
                          TextStyleTicketLow(
                          text: "Number of E-ticket",
                          textAlign: TextAlign.start,
                          color: Colors.grey,
                          ),
                        ],
                        ),
                      ),
          
                      SizedBox(width: 20),
          
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleTicket(
                          text: "B5839R",
                          textAlign: TextAlign.end,
                          color: AppStyles.textColor,
                          ),
                          TextStyleTicketLow(
                          text: "Booking code",
                          textAlign: TextAlign.end,
                          color: Colors.grey,
                          ),
                        ],
                        ),
                      ),
                      ],
                    ),
                    
                    SizedBox(height: 20,),
          
                    //Dashed line
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                      Expanded(
                        child: DashedLine(
                        dashCount: 20,
                        width: 1,
                        color: AppStyles.pathColor,
                        ),
                      ),
                      ],
                    ),
          
                    SizedBox(height: 20,),
                    
                    //VISA
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center, // <-- changed to center
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppMedia.visaCard,
                                    scale: 10,
                                  ),
                                  Text(
                                    " ***2462",
                                    style: AppStyles.header1.copyWith(
                                      fontSize: 20,
                                    ),
                                  ),
                                ]
                              ),
                            
                              TextStyleTicketLow(
                                text: "Payment method",
                                textAlign: TextAlign.start,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
          
                        SizedBox(width: 20),
          
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextStyleTicket(
                                text: "\$249.99",
                                textAlign: TextAlign.end,
                                color: AppStyles.textColor,
                              ),
                              TextStyleTicketLow(
                                text: "Price",
                                textAlign: TextAlign.end,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 1,),
          
              //Bottom of the ticket detail section
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: AppStyles.borderWhite,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                  )
                ),
                
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    data: 'https://www.google.com', 
                    barcode: Barcode.code128(),
                    color: AppStyles.textColor,
                    drawText: false,
                    height: 80,
                    width: double.infinity,
                  ),
                ),
              ),
          
              SizedBox(height: 20,),
            
              //Original Ticket
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
          TicketPositionedCircle(
            position: true,
          ),
          TicketPositionedCircle(
            position: false,
          )
        ],
      ),
    );
  }
}
