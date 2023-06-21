import 'package:flutter/material.dart';

class LightTheme with ThemeUtility{
  final ThemeColors _themeColors = ThemeColors();
  late ThemeData theme;
  LightTheme(){
    theme = ThemeData(
      scaffoldBackgroundColor: _themeColors.whiteOpacity95,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _themeColors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: floatButtonBorder),
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
        titleMedium: TextStyle(fontSize: FontSizeEnum.titleMediumSize.setValueSize(),color: _themeColors.deepPurple,fontWeight: FontWeight.w500),
        titleLarge: TextStyle(fontSize: FontSizeEnum.titleLargeSize.setValueSize(),fontWeight: FontWeight.w400,color: Colors.grey,decoration: TextDecoration.underline),
      ),
      colorScheme: const ColorScheme.light(),
      appBarTheme: AppBarTheme(
        color:  _themeColors.brightLightGreen,
        shape: RoundedRectangleBorder(borderRadius: appBarBorderRadius),
        centerTitle: true,
      ),
      checkboxTheme: const CheckboxThemeData(
        shape: CircleBorder(side: BorderSide.none),
      )
    );
  }
}

enum FontSizeEnum {
  titleMediumSize,titleLargeSize
}

extension FontSizeEnumExtension on FontSizeEnum{
  double setValueSize(){
    switch(this){
      case FontSizeEnum.titleMediumSize:
        return 24;
      case FontSizeEnum.titleLargeSize:
        return 32;
    }
  }
}


mixin ThemeUtility{
  final BorderRadius appBarBorderRadius = const BorderRadius.vertical(bottom: Radius.circular(20));
  final BorderRadius floatButtonBorder = const BorderRadius.all(Radius.circular(10));
}

class ThemeColors{
  final Color deepPurple = Colors.deepPurple;
  final Color deepOrange = Colors.deepOrange;
  final Color whiteOpacity95 = Colors.white.withOpacity(0.95);
  final Color brightLightGreen = const Color(0xff33ff41);
}
