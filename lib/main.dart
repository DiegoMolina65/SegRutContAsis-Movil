import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:med_geo_asistencia/config/constantes/constantes.dart';
import 'package:med_geo_asistencia/config/constantes/environment.dart';
import 'package:med_geo_asistencia/config/router/app_router.dart';
import 'package:overlay_kit/overlay_kit.dart';

void main() async {
  await Environment.initEnvironment();
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es', null);

  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);

    return OverlayKit(
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,

        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          // Especificar que soportamos el español
          Locale('es', 'ES'),
          Locale('en', 'US'), // Opcional, si usas inglés
        ],

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: TemaColor.primaryColor),
          appBarTheme: AppBarTheme(
            backgroundColor: TemaColor.primaryColor,
            foregroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: TemaColor.primaryColor,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: TemaColor.bodyTextColor),
            bodySmall: TextStyle(color: TemaColor.bodyTextColor),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.all(8),
            hintStyle: TextStyle(color: TemaColor.bodyTextColor),
          ),
        ),
      ),
    );
  }
}
