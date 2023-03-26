import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training1/presentation/forget_password/foregt_password.dart';
import 'package:training1/presentation/login/login_view.dart';
import 'package:training1/presentation/main/main_view.dart';
import 'package:training1/presentation/register/RegisterView.dart';
import 'package:training1/presentation/resources/strings_manager.dart';
import 'package:training1/presentation/splash/splash_view.dart';
import 'package:training1/presentation/store_details/store_details.dart';

class Routes{
  static const String splashRoute="/";
  static const String loginRoute="/login";
  static const String registerRoute="/register";
  static const String forgotPassword="/forgotPassword";
  static const String mainRoute="/main";
  static const String storeDetailsRoute="/storeDetails";
  static const String undefinedRouteRoute="/storeDetails";

}

class RouteGenerator{

  static Route<dynamic>? getRoute(RouteSettings routeSettings){
        switch(routeSettings.name){
          case Routes.splashRoute:
            return MaterialPageRoute(builder: (_)=>const SplashView());
          case Routes.loginRoute:
            return MaterialPageRoute(builder: (_)=>const LoginView());
          case Routes.registerRoute:
            return MaterialPageRoute(builder: (_)=>const RegisterView());
          case Routes.forgotPassword:
            return MaterialPageRoute(builder: (_)=>const ForgetPasswordView());
          case Routes.mainRoute:
            return MaterialPageRoute(builder: (_)=>const MainView());
          case Routes.storeDetailsRoute:
            return MaterialPageRoute(builder: (_)=>const StoreDetailsView());
        }
        return unDefinedRoute();


  }

  static unDefinedRoute(){
      return MaterialPageRoute(builder: (_)=> Scaffold(
        appBar: AppBar(
          title: const Text(AppStringsManager.noRouteFound),
        ),
      ));

  }
}