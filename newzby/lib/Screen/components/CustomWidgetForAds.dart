import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class CustomWidgetAdvertisment extends StatelessWidget {
  String title = '';
  String ProgressPercentage = '';
  String ButtonText = '';
  double ProgressValue = 1.0;

  CustomWidgetAdvertisment(
      {required this.title,
      required this.ProgressPercentage,
      required this.ButtonText,
      required this.ProgressValue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.only(top: 16.0, left: 10, right: 10, bottom: 10),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color(0xFF2697FF).withOpacity(0.15),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: ProgressValue, // Set the progress value to 85%
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.brown), // Set the color to brown
                      backgroundColor: Colors.grey, // Set the background color
                      strokeWidth:
                          3.0, // Set the thickness of the progress indicator
                    ),
                    Text(
                      ProgressPercentage, // Display the percentage
                      style: TextStyle(
                        color: Colors.brown, // Set the text color to brown
                        fontSize: 10, // Adjust the font size as needed
                        fontWeight:
                            FontWeight.bold, // Set the font weight to bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RatingBar(
                            initialRating: 3,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: 15,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              half: Icon(Icons.star_border),
                              empty: Icon(Icons.star_border),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Ratings by Editor",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black45),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                width: 25,
                decoration: BoxDecoration(
                    color: Color(0xffEEE6E2),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      ButtonText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
