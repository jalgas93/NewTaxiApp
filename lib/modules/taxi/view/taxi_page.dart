import 'package:flutter/material.dart';
import 'package:taxi/modules/app_common/widgets/block_container.dart';
import 'package:taxi/modules/app_common/widgets/page_background.dart';
import 'package:taxi/modules/taxi/taxi_widgets/services_cart.dart';
import 'package:taxi/modules/taxi/view/map_page.dart';

class TaxiPage extends StatelessWidget {
  const TaxiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBackground(
      child: Scaffold(
          appBar: AppBar(
            title:  Text('Taxi'),
          ),
          body: const BlockContainer(
            child: Center(
              child: MapPage(),
            ),
          )),
    );
  }
}
