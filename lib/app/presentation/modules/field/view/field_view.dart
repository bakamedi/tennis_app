import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../global/extensions/widgets_ext.dart';
import '../controller/field_controller.dart';
import 'widgets/field_form_w.dart';

class FieldView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const FieldView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, ref, __) {
          final fieldController = ref.watch(fieldProvider);
          return CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: FlutterCarousel(
                  options: CarouselOptions(
                    autoPlay: false,
                    onPageChanged: (index, reason) {},
                  ),
                  items: [1, 2, 3, 4, 5].map(
                    (i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: Text(
                              'text $i',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                ).padding(
                  EdgeInsets.only(
                    top: adaptativeScreen.bhp(9),
                  ),
                ),
              ),
              FieldFormW(
                adaptativeScreen: adaptativeScreen,
                fieldController: fieldController,
              ),
            ],
          );
        },
      ),
    );
  }
}
