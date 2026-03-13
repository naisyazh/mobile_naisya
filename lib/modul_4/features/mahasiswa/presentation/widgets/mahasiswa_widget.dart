import 'package:flutter/material.dart';

import '../../data/models/mahasiswa_model.dart';

class MahasiswaWidget extends StatelessWidget {
  final MahasiswaModel mahasiswa;

  const MahasiswaWidget({
    super.key,
    required this.mahasiswa,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.indigo.shade50,
          child: Icon(Icons.person_outline, color: Colors.indigo.shade700),
        ),
        title: Text(
          mahasiswa.nama,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "${mahasiswa.nim}\n${mahasiswa.programStudi} - Semester ${mahasiswa.semester}",
            style: TextStyle(
              color: Colors.blueGrey.shade600,
              height: 1.35,
            ),
          ),
        ),
        isThreeLine: true,
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "S${mahasiswa.semester}",
            style: TextStyle(
              color: Colors.indigo.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
