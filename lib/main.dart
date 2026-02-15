import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/routing/app_router.dart';
import 'package:dawak/core/storage/local_storage.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/firebase_options.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupDependencies();
  await serviceLocator<LocalStorage>().initLocalStorage();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Dawak());
}

class Dawak extends StatelessWidget {
  const Dawak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp.router(
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldColor),
        routerConfig: router,
      ),
    );
  }
}
