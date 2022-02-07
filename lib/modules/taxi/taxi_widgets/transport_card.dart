import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:taxi/modules/app/routing.gr.dart';

Widget TransportCard(
    String imgUrl, String serviceName, String location, BuildContext context) {
  return Card(
    margin: EdgeInsets.only(right: 18),
    //clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 0.0,
    child: InkWell(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.transportPage);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            scale: 2.0,
          ),
        ),
        width: 70.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          //location,
                          '',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
