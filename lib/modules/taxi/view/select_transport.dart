import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxi/modules/taxi/taxi_widgets/transport_card.dart';

class SelectTransport extends StatefulWidget {
  const SelectTransport({Key key}) : super(key: key);

  @override
  _SelectTransportState createState() => _SelectTransportState();
}

class _SelectTransportState extends State<SelectTransport> {
  List<String> urls = [
    'assets/icons/taxi.jpg',
   // 'assets/icons/dostavka.jpg',
    //'assets/icons/gruzoviyedostavka.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.0),
        child: Column(
          children: [
            Text(
              'Welcome  to TAXI',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Быстрый Такси'),
                          height: 80,
                          width: 80,
                        ),
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Доставка'),
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Семейное поездки'),
                          height: 80,
                          width: 80,
                        ),
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Для детей'),
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Грузовые доставки'),
                          height: 100,
                          width: 80,
                        ),
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('По пути'),
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Между городный'),
                          height: 100,
                          width: 80,
                        ),
                        Container(
                          height: 80.0,
                          child: TransportCard(urls[0], 'asd', 'adf', context),
                        ),
                        Container(
                          child: Text('Между районый'),
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
