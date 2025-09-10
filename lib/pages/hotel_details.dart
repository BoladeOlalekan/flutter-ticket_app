import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {

  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments;

    if (args is Map && args.containsKey('index')) {
      hotelIndex = args['index'] as int;
    } else {
      hotelIndex = 0;
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppStyles.borderColor,
                    size: 25,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background:  Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[hotelIndex]['image'] ?? ''}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black.withValues(alpha: .5),
                      child: Text(
                        hotelList[hotelIndex]['place'] ?? '',
                        style: AppStyles.hotelHeader,
                      ),
                    )
                  )
                ],
              )
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A retired astronaut opens a bakery in a quiet coastal town. Locals flock not just for the sourdough, but for stories of spacewalks and stardust. One day, a mysterious customer leaves behind a moon rock—and a note that reads, "We’re not done with you yet.”'
                      ),

                      SizedBox(height: 20,),

                      Text(
                        "More Images",
                        style: AppStyles.header2
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          AppMedia.hotel_1,
                        ),
                      );
                    }
                  ),
                )
              ]
            )
          )
        ],
      ),
    );
  }
}