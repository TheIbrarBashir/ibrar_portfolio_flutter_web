import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/custom_scroll.dart';
import 'package:get/get.dart';
import 'loading_page.dart';
import 'localization/localization_service.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      TranslationService.loadCurrentLocale();
      Get.updateLocale(TranslationService.fallbackLocale);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ibrar Bashir",
      fallbackLocale: TranslationService.fallbackLocale,
      locale: TranslationService.locale,
      translations: TranslationService(),
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const LoadingPage(),
    );
  }
}
