import '../models/dosen_model.dart';

class DosenRepository {
  List<DosenModel> getDosen() {
    return [
      DosenModel(
        nama: "Dr. Budi Santoso",
        nidn: "12345",
        email: "budi.santoso@example.com",
        prodi: "D4 Teknik Informatika",
      ),
      DosenModel(
        nama: "Dr. Andi Wijaya",
        nidn: "54321",
        email: "andi.wijaya@example.com",
        prodi: "D4 Sistem Informasi",
      ),
      DosenModel(
        nama: "Dr. Siti Rahma",
        nidn: "67890",
        email: "siti.rahma@example.com",
        prodi: "D4 Teknik Informatika",
      ),
    ];
  }
}
