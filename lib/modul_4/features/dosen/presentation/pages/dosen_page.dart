import 'package:flutter/material.dart';
import '../../../../core/widgets/page_intro_card.dart';
import '../providers/dosen_provider.dart';
import '../widgets/dosen_widget.dart';

class DosenPage extends StatelessWidget {
  DosenPage({super.key});

  final DosenProvider provider = DosenProvider();

  @override
  Widget build(BuildContext context) {
    final dosenList = provider.getDosen();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Dosen"),
      ),
      body: Column(
        children: [
          PageIntroCard(
            title: "Informasi Dosen",
            subtitle:
                "Lihat data dosen lengkap beserta NIDN, email kampus, dan program studi.",
            icon: Icons.co_present_rounded,
            badge: "${dosenList.length} dosen",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dosenList.length,
              itemBuilder: (context, index) {
                return DosenWidget(
                  dosen: dosenList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
