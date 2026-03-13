import 'package:flutter/material.dart';

import '../../data/models/profile_model.dart';

class ProfileWidget extends StatelessWidget {
  final ProfileModel profile;

  const ProfileWidget({
    super.key,
    required this.profile,
  });

  Widget _buildInfoTile({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(label),
      subtitle: Text(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1D4ED8), Color(0xFF60A5FA)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Icon(
                Icons.person,
                size: 42,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              profile.nama,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              profile.email,
              style: TextStyle(
                color: Colors.blueGrey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            _buildInfoTile(
              icon: Icons.badge,
              label: "NIM",
              value: profile.nim,
            ),
            _buildInfoTile(
              icon: Icons.class_,
              label: "Kelas",
              value: profile.kelas,
            ),
            _buildInfoTile(
              icon: Icons.school,
              label: "Program Studi",
              value: profile.programStudi,
            ),
            _buildInfoTile(
              icon: Icons.email,
              label: "Email",
              value: profile.email,
            ),
          ],
        ),
      ),
    );
  }
}
