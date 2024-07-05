import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/dashboard.dart';

class personal_details extends StatelessWidget {
  const personal_details({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF19173d),
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),
            Positioned(
              /*left: (MediaQuery.of(context).size.width / 375) * 20,
              top: (MediaQuery.of(context).size.height / 812) * 38,*/
              child: Image.asset(
                'assets/images/login5.jpg',
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 20) * 8,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 0,
                top: (MediaQuery.of(context).size.height / 812) * 181,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height / 812) * 638,
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 122,
                top: (MediaQuery.of(context).size.height / 812) * 109,
                child: Material(
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      color: Colors.white,
                      width: 132,
                      height: 132,
                    ))),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 128,
                top: (MediaQuery.of(context).size.height / 812) * 114,
                child: Material(
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/images/propic.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 10,
                top: (MediaQuery.of(context).size.height / 812) * 28,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dashboard()));
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_rounded,
                      size: 36,
                      color: Color.fromARGB(255, 37, 18, 246),
                    ))),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 197,
                top: (MediaQuery.of(context).size.height / 812) * 206,
                child: Container(
                  width: 40,
                  child: Material(
                    color: Color.fromARGB(255, 37, 18, 246),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: CircleBorder(),
                    child: IconButton(
                        splashRadius: 20,
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(
                          Icons.mode_edit_outline_rounded,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 20,
                top: (MediaQuery.of(context).size.height / 812) * 275,
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 11, 6, 75),
                  ),
                )),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 320,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "First Name",
                          hintText: "Amy",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          hintText: "Jackson",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 390,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Address Na",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 460,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Jackson0123@gmail.com",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 530,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Gender",
                          hintText: "Female",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Birthday",
                          hintText: "15-02-2000",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 600,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Blood Group",
                          hintText: "A-",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Telephone No.",
                          hintText: "044-7856321",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 670,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Special Health Notes",
                        hintText: "-----------------------",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
              left: 0,
              top: (MediaQuery.of(context).size.height / 812) * 740,
              child: Row(
                children: <Widget>[
                  MaterialButton(
                      child: Container(
                        /*padding: EdgeInsets.only(left: 10),*/
                        height: (MediaQuery.of(context).size.height / 812) * 50,
                        width: (MediaQuery.of(context).size.width / 375) * 157,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 37, 18, 246),
                              width: 2,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color.fromARGB(255, 37, 18, 246),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {}),
                  MaterialButton(
                      child: Container(
                        /*padding: EdgeInsets.only(left: 10),*/
                        height: (MediaQuery.of(context).size.height / 812) * 50,
                        width: (MediaQuery.of(context).size.width / 375) * 157,
                        decoration: BoxDecoration(
                            /*border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),*/
                            color: Color.fromARGB(255, 37, 18, 246),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ));
  }
}
