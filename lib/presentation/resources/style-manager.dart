import 'package:flutter/material.dart';
import 'package:training1/presentation/resources/fonts_manager.dart';



TextStyle _getTextStyle(double fontSize,FontWeight fontWeight,Color color){
  return TextStyle(fontSize: fontSize,fontWeight: fontWeight,fontFamily: FontConstants.fontFamily,color: color);
}

TextStyle getRegularStyle({required Color color,double? fontSize}){
  return _getTextStyle(fontSize ??FontSize.s14, FontWeightManager.regular, color,);
}


TextStyle getMediumStyle({required Color color,required double fontSize}){
  return _getTextStyle(fontSize, FontWeightManager.medium, color,);
}

TextStyle getLightStyle({required Color color,required double fontSize}){
  return _getTextStyle(fontSize, FontWeightManager.light, color,);
}


TextStyle getBoldStyle({required Color color,required double fontSize}){
  return _getTextStyle(fontSize, FontWeightManager.bold, color,);
}

TextStyle getSemiBoldStyle({required Color color,required double fontSize}){
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color,);
}