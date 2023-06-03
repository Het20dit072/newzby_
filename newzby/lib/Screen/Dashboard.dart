import 'package:flutter/material.dart';
import 'package:newzby/Screen/Add_Ads/RegularAds/RegularAdsScreen.dart';
import 'package:newzby/Screen/components/Dashboard_text_header.dart';
import 'package:newzby/constants.dart';
import 'package:intl/intl.dart';
import 'package:newzby/Screen/Add_Ads/BannerAds/BannerAdsScreen.dart';
import 'package:newzby/Screen/Add_Ads/FullAds/FullAdsScreen.dart';
import 'package:newzby/Screen/Add_Ads/HalfAds/HalfAdsScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String _currentDate = '';
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _getCurrentDateTime();
  }

  void _getCurrentDateTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd EEE').format(now);
    String formattedTime = DateFormat('h:mm a').format(now);
    setState(() {
      _currentDate = formattedDate;
      _currentTime = formattedTime;
    });
  }

  bool _isHovered = false;
  bool _showAdsContainer = false;

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  void _toggleAdsContainer() {
    setState(() {
      _showAdsContainer = !_showAdsContainer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: kprimarycolor,
            ),
          ),
          Row(
            children: [
              // Side Panel
              Container(
                color: kprimarycolor,
                width: 250,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: AnimatedOpacity(
                        opacity: _isHovered ? 0.7 : 0.0,
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          color: kprimarycolor,
                          // Adjust the opacity and other properties as desired
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SingleChildScrollView(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                          ),
                          child: SingleChildScrollView(
                            child: Container(
                              color: kblackcolor,
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Image(
                                    image: AssetImage(
                                      'assets/b-w.png',
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.dashboard_customize_outlined,
                                      color: Color(0xffFDCF6F),
                                    ),
                                    title: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                  ),
                                  InkWell(
                                    onHover: (value) => _handleHover(value),
                                    onTap: _toggleAdsContainer,
                                    child: Container(
                                      margin: _isHovered || _showAdsContainer
                                          ? EdgeInsets.only(left: 5)
                                          : null,
                                      decoration: BoxDecoration(
                                          color: _isHovered || _showAdsContainer
                                              ? kprimarycolor
                                              : kblackcolor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  (_isHovered || _showAdsContainer)
                                                      ? 50.0
                                                      : 0.0),
                                              bottomLeft: Radius.circular(
                                                  (_isHovered ||
                                                          _showAdsContainer)
                                                      ? 50.0
                                                      : 0.0),
                                              topRight: Radius.circular(
                                                  (_isHovered ||
                                                          _showAdsContainer)
                                                      ? 30.0
                                                      : 0.0))),
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.add,
                                          color: Color(0xffFDCF6F),
                                        ),
                                        title: Text(
                                          'Add Ads',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                _isHovered || _showAdsContainer
                                                    ? Colors.black
                                                    : Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.sort,
                                      color: Color(0xffFDCF6F),
                                    ),
                                    title: Text(
                                      'All Ads',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      "assets/icons/Pipe.png",
                                      height: 25,
                                    ),
                                    title: Text(
                                      'Analysis',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      "assets/icons/User_add-1.png",
                                      height: 25,
                                    ),
                                    title: Text(
                                      'Add User',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      "assets/icons/User_alt_light-1.png",
                                      height: 25,
                                    ),
                                    title: Text(
                                      'Profile',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(15),
                                      padding: EdgeInsets.all(5),
                                      width: 220,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Color(0xffdfebe9),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Container(
                                              child: Text(
                                                _currentTime,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              child: Text(
                                                _currentDate,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Dashboard Text and Admin Container
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        DashboardTextHeader(),
                        SizedBox(height: 10),
                      ],
                    ),
                    if (_isHovered || _showAdsContainer)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Positioned(
                          left: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.16,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.white,
                                      ),
                                      onPressed: _toggleAdsContainer,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegularAdsScreen()));
                                      // Handle Regular Ads button press
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'Regular Ads',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BannerAdsScreen()));
                                      // Handle Regular Ads button press
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'Banner Ads',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HalfAdsScreen()));
                                      // Handle Regular Ads button press
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'Half Ads',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FullAdsScreen()));
                                      // Handle Regular Ads button press
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'Full Ads',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
