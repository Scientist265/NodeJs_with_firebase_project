import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/controllers/onboarding_provider.dart';
import 'package:jobhubv2_0/controllers/zoom_provider.dart';
import 'package:jobhubv2_0/views/screens/mainscreen.dart';
import 'package:provider/provider.dart';

Widget defaultHome = const MainScreen();

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
      ChangeNotifierProvider(create: (context) => ZoomNotifier()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 815),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "devScientist JobHub",
            theme: ThemeData(
                scaffoldBackgroundColor: Color(kLight.value),
                iconTheme: IconThemeData(
                  color: Color(kDark.value),
                ),
                primarySwatch: Colors.grey),
            home: defaultHome,
          );
        });
  }
}
