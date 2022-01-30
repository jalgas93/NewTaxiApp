import 'package:flutter/material.dart';
import 'package:taxi/helpers/app_colors.dart';
import 'package:taxi/modules/app_common/widgets/block_container.dart';
import 'package:taxi/modules/app_common/widgets/empty_app_bar.dart';
import 'package:taxi/modules/app_common/widgets/page_background.dart';
import 'package:taxi/modules/taxi/view/services_page.dart';
import 'package:taxi/modules/taxi/view/taxi_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    Key key,
  }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  int selectedPage = 0;

  final _pageOptions = [
    const ServicePage(),
    const TaxiPage(),
    const TaxiPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageBackground(
      child: Scaffold(
        appBar: const EmptyAppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: _pageOptions[selectedPage],
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 3.0, right: 3.0, left: 3.0),
              child: bottomNavigationBar,
            )
          ],
        ),
      ),
    );
  }

  Widget get bottomNavigationBar {
    return BlockContainer(
        height: 80.0,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Products',
              icon: Icon(Icons.dashboard, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Basket',
              icon: Icon(Icons.shopping_cart, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: AppColors.primary,
          showUnselectedLabels: true,
          currentIndex: selectedPage,
          backgroundColor: Colors.black87,
          elevation: 8.0,
        ));
  }
}
