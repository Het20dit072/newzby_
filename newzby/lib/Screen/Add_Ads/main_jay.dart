import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newzby/Screen/components/sidepanel.dart';
import 'package:newzby/constants.dart';
import 'AddAdsDashBoard.dart';

class AddAds extends StatefulWidget {
  const AddAds({Key? key}) : super(key: key);

  @override
  State<AddAds> createState() => _AddAdsState();
}

class _AddAdsState extends State<AddAds> {
  String _currentDate = '';
  String _currentTime = '';
  bool isClicked = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDFEBE9),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [

                    // SidePanel begins 
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              50)), // Adjust the border radius as needed
                      child: SingleChildScrollView(
                        child: Container(
                          color: kblackcolor,
                          width: 250,
                          height: MediaQuery.of(context).size.height,
                          // Adjust the width as per your requirements
                          // Customize the color to match your design
                          child: Column(children: [
                            // Add your side panel content here
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
                            // You can use ListTile, Icon, Text, or any other widgets
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
                            Container(
                              margin:
                                  isClicked ? EdgeInsets.only(left: 10) : null,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  color: isClicked
                                      ? Color(0xffDFEBE9)
                                      : null, // Set background color when clicked
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(isClicked
                                        ? 18.0
                                        : 0.0), // Set top left border radius when clicked
                                    bottomLeft: Radius.circular(isClicked
                                        ? 18.0
                                        : 0.0), // Set bottom left border radius when clicked
                                  )),
                              child: ListTile(
                                onTap: () async {
                                  setState(() {
                                    isClicked = !isClicked;
                                  });
                                  await Future.delayed(Duration(seconds: 1));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddAds()),
                                  );
                                },
                                leading: Icon(
                                  Icons.add,
                                  color: Color(0xffFDCF6F),
                                ),
                                title: InkWell(
                                  child: Text(
                                    'Add Ads',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: isClicked
                                            ? Colors.black
                                            : Colors.white),
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

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Expanded(
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
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          child: Text(
                                            _currentDate,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
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
                            flex: 7,
                            child: Row(
                              children: [
                                AddAdsDashBoard(
                                  nameofcontainer: 'Regular Ads',
                                ),
                                AddAdsDashBoard(
                                  nameofcontainer: 'Banner Ads',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Row(
                              children: [
                                AddAdsDashBoard(
                                  nameofcontainer: 'Full Ads',
                                ),
                                AddAdsDashBoard(
                                  nameofcontainer: 'Half Ads',
                                ),
                              ],
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
        ));
  }
}
