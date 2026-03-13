import 'package:flutter/material.dart';
import '../../../../core/widgets/page_intro_card.dart';
import '../providers/mahasiswa_provider.dart';
import '../widgets/mahasiswa_widget.dart';

class MahasiswaPage extends StatelessWidget {
  MahasiswaPage({super.key});

  final MahasiswaProvider provider = MahasiswaProvider();

  @override
  Widget build(BuildContext context) {
    final mahasiswaList = provider.getMahasiswa();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Mahasiswa"),
      ),
      body: Column(
        children: [
          PageIntroCard(
            title: "Daftar Mahasiswa",
            subtitle:
                "Menampilkan identitas mahasiswa, program studi, dan semester aktif.",
            icon: Icons.groups_rounded,
            badge: "${mahasiswaList.length} mahasiswa",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mahasiswaList.length,
              itemBuilder: (context, index) {
                return MahasiswaWidget(
                  mahasiswa: mahasiswaList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
