import 'package:go_router/go_router.dart';

import '../../../core/adaptative_screen/adaptative_screen.dart';
import '../../modules/field/view/field_view.dart';

class FieldsRoute {
  static const path = '/field-route';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (context, __) {
        final AdaptativeScreen adaptativeScreen = AdaptativeScreen(context);

        return FieldView(
          adaptativeScreen: adaptativeScreen,
        );
      },
    );
  }
}
