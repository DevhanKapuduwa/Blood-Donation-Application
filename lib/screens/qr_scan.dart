import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/dashboard.dart';

class qr_scan extends StatelessWidget {
  const qr_scan({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Donating Documentation',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(222, 37, 18, 246),
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dashboard()));
            },
            color: Colors.white,
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(15), child: Container()),
        ),
        backgroundColor: Color.fromARGB(255, 235, 234, 255),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  shadowColor: Color.fromARGB(255, 195, 192, 252),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:
                              (MediaQuery.of(context).size.width / 375) * 20,
                        ),
                        Text(
                          "Blood Donation form",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 12, 6, 79),
                          ),
                        ),
                        SizedBox(
                          height:
                              (MediaQuery.of(context).size.width / 375) * 10,
                        ),
                        Text(
                          "Blood Donor Information",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 21, 225),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text_details(
                                tx_details: 'Amy',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'first name:'),
                            text_details(
                                tx_details: 'Jackson',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'Last name:'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text_details(
                                tx_details: '63214',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'Telephone No.:'),
                            text_details(
                                tx_details: '07-06-2002',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'Date:'),
                          ],
                        ),
                        text_details(
                            tx_details: 'Jackson@email.com',
                            tx_width:
                                (MediaQuery.of(context).size.width / 375) * 300,
                            tx_heading: 'Email:'),
                        text_details(
                            tx_details: 'Moronthuduwa,Wadduwa',
                            tx_width:
                                (MediaQuery.of(context).size.width / 375) * 300,
                            tx_heading: 'Address :'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text_details(
                                tx_details: 'Female',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'Gender:'),
                            text_details(
                                tx_details: 'A-',
                                tx_width:
                                    (MediaQuery.of(context).size.width / 375) *
                                        150,
                                tx_heading: 'Blood Group:'),
                          ],
                        ),
                        Text(
                          "Health Security Check",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 21, 225),
                          ),
                        ),
                        Radio_question(
                            radio_tx: 'Do you suffer of any diseases ?'),
                        Radio_question(radio_tx: 'Do you have allergies ?'),
                        Radio_question(
                            radio_tx:
                                'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?'),
                        Radio_question(
                            radio_tx: 'Do you have any cardiac problems ?'),
                        Radio_question(
                            radio_tx: 'Do you suffer any bleeding disorders ?'),
                        Radio_question(radio_tx: 'Do you take medication ?'),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
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
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ));
  }
}

class text_details extends StatelessWidget {
  final String tx_details;
  final String tx_heading;
  final double tx_width;
  const text_details(
      {required this.tx_details,
      required this.tx_width,
      required this.tx_heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tx_width,
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Text(
            tx_heading,
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 12, 6, 79),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            tx_details,
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 12, 6, 79),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class Radio_question extends StatefulWidget {
  final String radio_tx;

  const Radio_question({Key? key, required this.radio_tx}) : super(key: key);

  @override
  State<Radio_question> createState() => _Radio_questionState();
}

List<String> options = ["Yes", "No"];

class _Radio_questionState extends State<Radio_question> {
  late String _receivedData;
  String currentOption = options[0];
  void initState() {
    super.initState();
    _receivedData = widget.radio_tx;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(_receivedData),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Yes"),
                Radio(
                  value: options[0],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text("No"),
                Radio(
                  value: options[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
