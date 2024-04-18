import 'package:go_router/go_router.dart';

import '../../../core/adaptative_screen/adaptative_screen.dart';
import '../../modules/agenda-item/view/agenda_item_view.dart';

class AgendaItemRoute {
  static const path = '/agenda-item';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, __) {
        final AdaptativeScreen adaptativeScreen = AdaptativeScreen(context);

        return AgendaItemView(
          adaptativeScreen: adaptativeScreen,
        );
      },
    );
  }
}
