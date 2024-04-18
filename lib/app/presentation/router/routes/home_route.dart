import 'package:go_router/go_router.dart';

import '../../../core/adaptative_screen/adaptative_screen.dart';
import '../../modules/home/view/home_view.dart';

class HomeRoute {
  static const path = '/home';
  static const name = 'Home';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, __) {
        final AdaptativeScreen adaptativeScreen = AdaptativeScreen(context);

        return HomeView(
          adaptativeScreen: adaptativeScreen,
        );
      },
    );
  }
}
