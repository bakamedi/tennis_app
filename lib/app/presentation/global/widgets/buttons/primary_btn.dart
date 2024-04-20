import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../extensions/widgets_ext.dart';

/// Posicion izquierda o derecha del icono dentro del btn
enum PositionBtnIcon {
  none,
  left,
  right,
}

/// Boton Rojo si existe un icono ese los reemplaza con el otro
/// boton y se le tiene que dar un tamaño porque el defecto es
/// de 15 y deberia de tomar un tamaño correspondiente al de la pantall
class PrimaryBtn extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? iconSize;
  final double fontSize;
  final ButtonStyle? style;
  final double horizontalSpace;
  final double verticalSpace;
  final PositionBtnIcon positionBtnIcon;
  final void Function()? onPressed;

  const PrimaryBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.fontSize = 0,
    this.style,
    this.iconSize,
    this.icon,
    this.horizontalSpace = 20.0,
    this.verticalSpace = 1,
    this.positionBtnIcon = PositionBtnIcon.none,
  });

  @override
  Widget build(BuildContext context) {
    final AdaptativeScreen adaptativeScreen = AdaptativeScreen(context);
    final fontSizeadaptativeScreen = adaptativeScreen.dp(1.7);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalSpace,
        horizontal: horizontalSpace,
      ),
      width: double.infinity,
      child: icon == null
          ? _btn(fontSizeadaptativeScreen)
          : _iconBtn(
              icon,
              fontSizeadaptativeScreen,
              positionBtnIcon,
            ),
    );
  }

  Widget _btn(double fontSize) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          letterSpacing: 1,
        ),
      ).padding(
        const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }

  Widget _iconBtn(
    IconData? icon,
    double fontSize,
    PositionBtnIcon positionBtnIcon,
  ) {
    if (positionBtnIcon == PositionBtnIcon.left) {
      return ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.black,
          size: fontSize,
        ),
        onPressed: onPressed,
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
          ),
        ).padding(
          const EdgeInsets.symmetric(vertical: 12),
        ),
      );
    } else if (positionBtnIcon == PositionBtnIcon.right) {
      return ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
              ),
            ),
            5.w,
            Icon(
              icon,
              color: Colors.black,
              size: fontSize,
            ),
          ],
        ).padding(
          const EdgeInsets.symmetric(vertical: 12),
        ),
      );
    } else {
      return _btn(fontSize);
    }
  }
}
