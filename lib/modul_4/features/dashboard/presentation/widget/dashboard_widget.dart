import 'package:flutter/material.dart';
import '../../data/models/dashboard_model.dart';

class DashboardWidget extends StatelessWidget {
  final DashboardModel menu;

  const DashboardWidget({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    final icon = switch (menu.route) {
      '/dosen' => Icons.school,
      '/mahasiswa' => Icons.groups,
      '/mahasiswa_aktif' => Icons.verified_user,
      '/profile' => Icons.person,
      _ => Icons.dashboard,
    };

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue.shade50,
          child: Icon(icon, color: Colors.blue.shade700),
        ),
        title: Text(
          menu.title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            menu.subtitle,
            style: TextStyle(
              color: Colors.blueGrey.shade600,
              height: 1.35,
            ),
          ),
        ),
        trailing: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.arrow_forward, color: Colors.blue.shade700),
        ),
        onTap: () {
          Navigator.pushNamed(context, menu.route);
        },
      ),
    );
  }
}
