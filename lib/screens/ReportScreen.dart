import 'package:arnold/styles/HomeStyle.dart';
import 'package:fcharts/fcharts.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  ReportScreen({Key key}) : super(key: key);

  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  static const myData = [
    ["A", "✔"],
    ["B", "❓"],
    ["C", "✖"],
    ["D", "❓"],
    ["E", "✖"],
    ["F", "✖"],
    ["G", "✔"],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(),
          title: Text('Report & Tracking',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Ubuntu', fontSize: 16)),
          iconTheme: new IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              profile(),
              SizedBox(
                height: 15,
              ),
              carddesign(),
              SizedBox(
                height: 15,
              ),
              linechart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget profile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('images/dp.jpeg'),
              )),
        ),
        SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text('Micheal Doe',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 3,
            ),
            Text('Latest Weight',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontFamily: 'Ubuntu',
                )),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                  text: '75',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w900),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'kg',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ]),
            ),
          ],
        )
      ],
    );
  }

  Widget linechart() {
    return Card(
        child: Column(children: <Widget>[
      Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Weight History',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w800,
                  fontSize: 13),
            ),
            Text(
              'Edit',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w800,
                  color: Colors.red,
                  fontSize: 13),
            )
          ],
        ),
      ),
      SizedBox(
        height: 200,
        child: LineChart(
          lines: [
            new Line<List<String>, String, String>(
              marker: MarkerOptions(
                  paint: PaintOptions.fill(color: Colors.red),
                  size: 5,
                  shape: MarkerShapes.circle),
              data: myData,
              xFn: (datum) => datum[0],
              yFn: (datum) => datum[1],
            ),
          ],
          chartPadding: new EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 30.0),
        ),
      ),
    ]));
  }

  Widget carddesign() {
    return SizedBox(
      height: 80,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Text(
                'This week',
                style: HomeStyle.homeBodyCardTitle,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: '5 ',
                        style: HomeStyle.homeBodyCardTitle1,
                        children: [
                          TextSpan(
                              text: "days", style: HomeStyle.homeBodyCardTitle)
                        ]),
                  ),
                  Container(
                    height: 30,
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '340 ',
                        style: HomeStyle.homeBodyCardTitle1,
                        children: [
                          TextSpan(
                              text: "min", style: HomeStyle.homeBodyCardTitle)
                        ]),
                  ),
                  Container(
                    height: 30,
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '2.1 ',
                        style: HomeStyle.homeBodyCardTitle1,
                        children: [
                          TextSpan(
                              text: "kcal", style: HomeStyle.homeBodyCardTitle)
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
