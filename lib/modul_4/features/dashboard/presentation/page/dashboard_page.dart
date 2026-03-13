import 'package:flutter/material.dart';
import '../../../../core/widgets/page_intro_card.dart';
import '../provider/dashboard_provider.dart';
import '../widget/dashboard_widget.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final DashboardProvider provider = DashboardProvider();

  @override
  Widget build(BuildContext context) {
    final menus = provider.getMenus();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageIntroCard(
            title: "Selamat datang di Modul 4",
            subtitle:
                "Pilih menu untuk membuka data praktikum mobile dengan navigasi yang sudah terhubung.",
            icon: Icons.dashboard_customize_rounded,
            badge: "${menus.length} menu tersedia",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Menu Utama",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: menus.length,
              itemBuilder: (context, index) {
                return DashboardWidget(menu: menus[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
