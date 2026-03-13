import 'package:flutter/material.dart';

import '../../data/models/mahasiswa_aktif_model.dart';

class MahasiswaAktifWidget extends StatelessWidget {
  final MahasiswaAktifModel mahasiswa;

  const MahasiswaAktifWidget({
    super.key,
    required this.mahasiswa,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = mahasiswa.aktif ? Colors.green : Colors.red;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: statusColor.withOpacity(0.1),
          child: Icon(
            mahasiswa.aktif ? Icons.check_circle : Icons.cancel,
            color: statusColor,
          ),
        ),
        title: Text(
          mahasiswa.nama,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "${mahasiswa.nim} | ${mahasiswa.kelas}",
            style: TextStyle(color: Colors.blueGrey.shade600),
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: statusColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            mahasiswa.aktif ? "Aktif" : "Nonaktif",
            style: TextStyle(
              color: statusColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
