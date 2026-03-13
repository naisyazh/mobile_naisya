import 'package:flutter/material.dart';
import 'modul_4/core/constants/constants.dart';
import 'modul_4/features/dashboard/presentation/page/dashboard_page.dart';
import 'modul_4/features/dosen/presentation/pages/dosen_page.dart';
import 'modul_4/features/mahasiswa/presentation/pages/mahasiswa_page.dart';
import 'modul_4/features/mahasiswa_aktif/presentation/pages/mahasiswa_aktif_page.dart';
import 'modul_4/features/profile/presentation/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2563EB),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF4F7FB),
          foregroundColor: Color(0xFF0F172A),
          elevation: 0,
          centerTitle: true,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
      initialRoute: AppConstants.dashboardRoute,
      routes: {
        AppConstants.dashboardRoute: (context) => DashboardPage(),
        AppConstants.dosenRoute: (context) => DosenPage(),
        AppConstants.mahasiswaRoute: (context) => MahasiswaPage(),
        AppConstants.mahasiswaAktifRoute: (context) => MahasiswaAktifPage(),
        AppConstants.profileRoute: (context) => ProfilePage(),
      },
    );
  }
}
