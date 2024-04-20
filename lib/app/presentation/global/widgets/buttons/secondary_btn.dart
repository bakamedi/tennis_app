import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';

class SecondaryBtn extends StatelessWidget {
  final String btnText;
  final IconData? iconData;
  final double horizontalSpace;
  final double fontSize;
  final Function() onPressed;

  const SecondaryBtn({
    super.key,
    this.btnText = '',
    required this.onPressed,
    this.horizontalSpace = 20.0,
    this.fontSize = 0,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    final AdaptativeScreen adaptativeScreen = AdaptativeScreen(context);

    double fontSize =
        this.fontSize > 0.0 ? this.fontSize : adaptativeScreen.dp(1.7);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalSpace,
      ),
      width: double.infinity,
      //color: ThemeColor.whiteColor,
      child: OutlinedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: btnText.isEmpty
              ? Icon(
                  iconData,
                  color: Colors.black,
                )
              : Text(
                  btnText,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.black,
                  ),
                ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
