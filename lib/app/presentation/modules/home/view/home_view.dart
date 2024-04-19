import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../global/widgets/sliver_size_box_gw.dart';
import '../../../router/routes/fields_route.dart';

import '../controller/home_controller.dart';
import 'widgets/agenda_item_w.dart';

class HomeView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  const HomeView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, ref, __) {
          final homeController = ref.watch(homeProvider);
          return CustomScrollView(
            slivers: [
              SliverSizeBoxGW(
                height: adaptativeScreen.bhp(9),
              ),
              SliverList.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return AgendaItemW(
                    adaptativeScreen: adaptativeScreen,
                    index: index,
                  );
                },
              ),
              SliverSizeBoxGW(
                height: adaptativeScreen.bhp(5),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed(
          FieldsRoute.path,
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
