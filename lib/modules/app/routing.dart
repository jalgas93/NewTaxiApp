import 'package:auto_route/auto_route_annotations.dart';
import 'package:taxi/modules/taxi/view/dashboard_page.dart';
import 'package:taxi/modules/taxi/view/map_page.dart';
import 'package:taxi/modules/taxi/view/taxi_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(initial: true, page: DashboardPage),
  AutoRoute(page: TaxiPage),
  AutoRoute(page: MapPage),
])



class $AppRouter {


}
