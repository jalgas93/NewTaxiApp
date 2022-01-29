import 'package:auto_route/annotations.dart';
import 'package:taxi/modules/taxi/view/taxi_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(initial: true, page: TaxiPage),
])
class $AppRouter {}
