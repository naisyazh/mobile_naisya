import 'package:flutter/material.dart';
import '../../../../core/widgets/page_intro_card.dart';
import '../providers/mahasiswa_aktif_provider.dart';
import '../widgets/mahasiswa_aktif_widget.dart';

class MahasiswaAktifPage extends StatelessWidget {
  MahasiswaAktifPage({super.key});

  final MahasiswaAktifProvider provider = MahasiswaAktifProvider();

  @override
  Widget build(BuildContext context) {
    final mahasiswaAktifList = provider.getMahasiswaAktif();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mahasiswa Aktif"),
      ),
      body: Column(
        children: [
          PageIntroCard(
            title: "Status Mahasiswa Aktif",
            subtitle:
                "Monitoring mahasiswa yang masih aktif mengikuti perkuliahan pada kelasnya.",
            icon: Icons.verified_user_rounded,
            badge: "${mahasiswaAktifList.length} data aktif",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mahasiswaAktifList.length,
              itemBuilder: (context, index) {
                return MahasiswaAktifWidget(
                  mahasiswa: mahasiswaAktifList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
