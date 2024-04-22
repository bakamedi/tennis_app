import 'package:flutter/cupertino.dart';

abstract class WidgetUtils {
  static List<Widget> modelBuilder<M>(
    List<M> models,
    Widget Function(int index, M model) builder,
  ) =>
      models
          .asMap()
          .map<int, Widget>(
            (index, model) => MapEntry(
              index,
              builder(index, model),
            ),
          )
          .values
          .toList();

  /// Alternativaly: You can display an Android Styled Bottom Sheet instead
  /// of an iOS styled bottom Sheet
  // static void showSheet(
  //   BuildContext context, {
  //   required Widget child,
  // }) =>
  //     showModalBottomSheet(
  //       context: context,
  //       builder: (context) => child,
  //     );

  static void showSheet(
    BuildContext context, {
    required Widget child,
    required VoidCallback onClicked,
    required String doneTxt,
  }) =>
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            child,
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: onClicked,
            child: const Text(
              'ok',
            ),
          ),
        ),
      );
}
