import 'package:flutter/widgets.dart';

class ViewConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;

  /// ignore: unused_field
  static double safeBlockHorizontal;

  /// ignore: unused_field
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

    blockSizeHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    blockSizeVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

double _blockSize(BuildContext context) {
  return ViewConfig.blockSizeHorizontal;
}

double blockSizeHorizontal(BuildContext context) {
  // ViewConfig().init(context);
  return ViewConfig.blockSizeHorizontal;
}

double blockSizeVertical(BuildContext context) {
  return ViewConfig.blockSizeVertical;
}

double screenWidth(BuildContext context) {
  ViewConfig().init(context);
  return ViewConfig.screenWidth;
}

double screenHeight(BuildContext context) {
  ViewConfig().init(context);
  return ViewConfig.screenHeight;
}

double blockSize(BuildContext context) {
  ViewConfig().init(context);
  double blockSize = (blockSizeVertical(context) + _blockSize(context) / 2);
  return blockSize;
}

Widget verticalSpaceXSmall(BuildContext context) {
  return SizedBox(
    height: blockSize(context) * 1,
  );
}

Widget verticalSpaceSmall(BuildContext context) {
  return SizedBox(
    height: blockSize(context) * 2,
  );
}

Widget verticalSpaceMedium(BuildContext context) {
  return SizedBox(
    height: blockSize(context) * 5,
  );
}

Widget verticalSpaceLarge(BuildContext context) {
  return SizedBox(
    height: blockSize(context) * 10,
  );
}

Widget horizontalSpaceXSmall(BuildContext context) {
  return SizedBox(
    width: blockSize(context) * 1,
  );
}

Widget horizontalSpaceSmall(BuildContext context) {
  return SizedBox(
    width: blockSize(context) * 2,
  );
}

Widget horizontalSpaceMedium(BuildContext context) {
  return SizedBox(
    width: blockSize(context) * 5,
  );
}

Widget horizontalSpaceLarge(BuildContext context) {
  return SizedBox(
    width: blockSize(context) * 10,
  );
}
