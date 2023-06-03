import 'package:flutter/material.dart';
import 'package:newzby/Screen/Add_Ads/ChildAdsBelowSideContianer.dart';
import 'package:newzby/Screen/Add_Ads/ChildAdsLeftSideContainer.dart';
import 'package:newzby/Screen/Add_Ads/ChildAdsRightSideContianer.dart';
import 'package:newzby/Screen/Add_Ads/main_jay.dart';


class BannerAdsScreen extends StatelessWidget {
  const BannerAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Add Ads',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Banner Ads',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddAds()));
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.close,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(left: 35, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              ChildAdsLeftSideContianer(
                                nameofchildleft: 'Category',
                              ),
                              ChildAdsLeftSideContianer(
                                nameofchildleft: 'Active Ad',
                              ),
                              ChildAdsLeftSideContianer(
                                nameofchildleft: 'End Date',
                              ),
                              ChildAdsLeftSideContianer(
                                nameofchildleft: 'Total',
                              ),
                              ChildAdsLeftSideContianer(
                                nameofchildleft: 'Location',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 250,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ChildAdsRightSideContainer(
                                nameOfChildRight: 'Image/Gif',
                              ),
                              ChildAdsRightSideContainer(
                                nameOfChildRight: 'Product Link',
                              ),
                              ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ChildAdsBelowSideContianer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
