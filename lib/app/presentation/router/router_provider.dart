import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';

import 'routes/agenda_item_route.dart';
import 'routes/fields_route.dart';
import 'routes/home_route.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: HomeRoute.path,
    routes: [
      HomeRoute.route,
      AgendaItemRoute.route,
      FieldsRoute.route,
    ],
  ),
);
