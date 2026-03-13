import 'package:flutter/material.dart';
import '../../../../core/widgets/page_intro_card.dart';

import '../providers/profile_provider.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfileProvider provider = ProfileProvider();

  @override
  Widget build(BuildContext context) {
    final profile = provider.getProfile();

    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Column(
        children: [
          PageIntroCard(
            title: "Profil Pengembang",
            subtitle:
                "Halaman profil menampilkan identitas singkat pembuat aplikasi modul 4.",
            icon: Icons.account_circle_rounded,
            badge: "1 profil",
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: ProfileWidget(profile: profile),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
