// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coustom {
  // static mediaQueryHeight(BuildContext context) =>
  //     MediaQuery.of(context).size.height;

  // static mediaQueryWidth(BuildContext context) =>
  //     MediaQuery.of(context).size.width;

  ///[Coustom text style]
  static TextStyle textStyle({
    double? fontSize = 14,
    FontWeight? fontWeight = FontWeight.bold,
    Color? colors = Colors.black87,
  }) {
    return GoogleFonts.montserrat(
      // fontSize: 26,
      // fontWeight: FontWeight.w600,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: colors,
    );
  }

  static Widget curveContainer({
    double? height = 30,
    double? width = 20, // also applicable for ' double.maxFinite '
    Color? color = Colors.cyan,
    Color? splashColor,
    BorderRadius? borderRadius,
    Widget? child,
    void Function()? onTap,
    void Function()? onLongPress,
    void Function()? onDoubleTap,
  }) {
    if (borderRadius == null) {
      borderRadius = BorderRadius.circular(11);
    }
    //or
    /// [borderRadius ??= BorderRadius.circular(11);]
    /// both are same

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      borderRadius: borderRadius,
      splashColor: splashColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }

  //
  ///[end of coustom Widgit Class]
}
