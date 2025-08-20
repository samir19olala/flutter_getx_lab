import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    AdaptiveTheme(
      dark: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Color(0xFF584800),
        brightness: Brightness.dark,
        ),

      light: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Color(0xFFFFD102),
        brightness: Brightness.light
        ),

      initial: AdaptiveThemeMode.system,
      debugShowFloatingThemeButton: true,

      builder:(theme,darkTheme){ 
        return LayoutBuilder(builder: (context,constraints){
          ScreenUtil.init(
            context,
            designSize: const Size(375,812), // IPHONE XR COMME REFERENCE
            minTextAdapt: true,
          );
          return GetMaterialApp(
            title: "Application",
            darkTheme: darkTheme,
            theme: theme,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
          );
        }
        );
      }
    ),
  );
}
