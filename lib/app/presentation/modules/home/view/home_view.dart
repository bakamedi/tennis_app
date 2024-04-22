import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../core/icons/tennis_app_icons.dart';
import '../../../global/widgets/sliver_size_box_gw.dart';

import '../controller/home_controller.dart';
import '../utils/go_add_agenda.dart';
import 'widgets/reservations_w.dart';

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
                height: adaptativeScreen.bhp(2),
              ),
              SliverAppBar(
                centerTitle: false,
                title: Text(
                  'Reservaciones',
                  style: TextStyle(
                    fontSize: adaptativeScreen.dp(2.2),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              ReservationW(
                adaptativeScreen: adaptativeScreen,
                homeController: homeController,
              ),
              SliverSizeBoxGW(
                height: adaptativeScreen.bhp(5),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => goAddAgenda(context),
        backgroundColor: Colors.grey.shade300,
        child: const Icon(
          TennisAppIcons.calendar_plus_regular,
        ),
      ),
    );
  }
}
