import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newzby/Screen/components/CustomWidgetForAds.dart';
import 'package:newzby/Screen/components/cardPanel.dart';
import 'package:newzby/Screen/components/customWidget.dart';
import 'package:newzby/constants.dart';

class DashboardTextHeader extends StatefulWidget {
  @override
  _DashboardTextHeaderState createState() => _DashboardTextHeaderState();
}

class _DashboardTextHeaderState extends State<DashboardTextHeader> {
  bool isRunningAdsClicked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Dashboard",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: kblackcolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Icon(Icons.account_circle_outlined)),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Admin",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.varelaRound(
                              color: Colors.white,
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                  children: [
                    RunningAdsCard(),
                    NewRequestCard(),
                    FeedCountCard(),
                    TotalVisitorsCard()
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          width: 504,
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Location Based",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomWidget(
                                title: "Area Vise",
                                ProgressPercentage: "80%",
                                ProgressValue: 0.8,
                                ButtonText: "28",
                              ),
                              CustomWidget(
                                title: "City Vise",
                                ProgressPercentage: "85%",
                                ProgressValue: 0.85,
                                ButtonText: "23",
                              ),
                              CustomWidget(
                                title: "Globe Vise",
                                ProgressPercentage: "68%",
                                ProgressValue: 0.68,
                                ButtonText: "39",
                              ),
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          width: 504,
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Advertisments",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomWidgetAdvertisment(
                                title: "Banner Ads",
                                ProgressPercentage: "50%",
                                ProgressValue: 0.5,
                                ButtonText: "20",
                              ),
                              CustomWidgetAdvertisment(
                                title: "Full Ads",
                                ProgressPercentage: "25%",
                                ProgressValue: 0.25,
                                ButtonText: "4",
                              ),
                              CustomWidgetAdvertisment(
                                title: "Regular Ads",
                                ProgressPercentage: "25%",
                                ProgressValue: 0.25,
                                ButtonText: "4",
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Category Wise Feed Count",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 9,
                                        width: 365,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.white,
                                          value: 0.52,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Colors.yellow, //<-- SEE HERE
                                          ),
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "52%",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 9,
                                        width: 365,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.white,
                                          value: 0.52,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Colors.yellow, //<-- SEE HERE
                                          ),
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text("74%")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Politics",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Religious",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 9,
                                        width: 365,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.white,
                                          value: 0.74,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xff252B42), //<-- SEE HERE
                                          ),
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text("74%")),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 9,
                                        width: 365,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.white,
                                          value: 0.74,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xff252B42), //<-- SEE HERE
                                          ),
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text("74%")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Stockmarket",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Health",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
